#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games,teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    
    #GET WINNER ID OR INSERT IT
    if [[ -z $WINNER_ID ]]
    then
      #insert winner as a team
      INSERT_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
      
      if [[ $INSERT_WINNER_TEAM == "INSERT 0 1" ]]
      then
        echo "Inserted into TEAM, $WINNER"
      fi
      
      #get winner id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi

    #INSERT OPPONENT ID
    if [[ -z $OPPONENT_ID ]]
    then
      #insert opponent as a team
      INSERT_OPPONENT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
      
      if [[ $INSERT_OPPONENT_TEAM == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $OPPONENT"
      fi
      
      #get opponent id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi

    #INSERT GAME
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
      VALUES ('$YEAR','$ROUND','$WINNER_ID','$OPPONENT_ID','$WINNER_GOALS','$OPPONENT_GOALS')")

    if [[ $INSERT_GAME == "INSERT 0 1" ]]
    then
      echo "Inserted into games, $WINNER vs $OPPONENT - $YEAR"
    fi
  fi

done
