# MLS SQL Exercise (still in production; not finished)

This repository contains an SQL exercise based on Major League Soccer (MLS) data. The exercise involves answering various questions about the MLS data using PostgreSQL and pgAdmin..

## Instructions

1. Clone the repository to your local machine:

   ```
   git clone <repository-url>
   ```

2. Set up a PostgreSQL database using pgAdmin or any other PostgreSQL client of your choice.

3. Import the MLS tables into your PostgreSQL database. You can use the provided CSV files (`all_goalkeepers.csv`, `all_players.csv`, `conference_games.csv`, `player_ratings.csv`) to import the data into corresponding tables.

4. Start exploring and querying the data to answer the following questions:

   1. What are the top 5 goalkeepers with the lowest goals against average (gaa)?
   2. Which goalkeeper has the highest Save Percentage (sv_pct) for each year?
   3. Which player has the most goals (g) for each year?
   4. What are the top 10 players with the highest Shot Conversion Rate (sc_pct) of all time?
   5. What are the teams that qualified for the playoffs in the Eastern Conference in the year 1999?
   6. Which team had the highest number of Points (pts) in the Western Conference in the year 2005?
   7. Which position has the highest average Physical (phy) rating?
   8. Which players were part of the teams that qualified for the playoffs in the year 2004?
   9. Who are the top-rated players in terms of Overall Rating (ovr) for each position?
   10. Which team(s) that had a negative Goal Difference (gd) in the year 2002?


## Data Dictionary

The data dictionary provides a description of the tables and their columns used in the MLS database.

1. `all_goalkeepers` table:

   - `Player`: Player's name
   - `Club`: Club name
   - `POS`: Player's position
   - `GP`: Games played
   - `GS`: Games started
   - `MINS`: Minutes played
   - `SHTS`: Shots faced
   - `SV`: Saves
   - `GA`: Goals against
   - `GAA`: Goals against average
   - `PKG/A`: Penalty kicks goals/attempted
   - `W`: Wins
   - `L`: Losses
   - `T`: Ties
   - `ShO`: Shutouts
   - `W%`: Win percentage
   - `Sv%`: Save percentage
   - `Year`: Year
   - `Season`: Season (e.g., regular season)

2. `all_players` table:

   - `Player`: Player's name
   - `Club`: Club name
   - `POS`: Player's position
   - `GP`: Games played
   - `GS`: Games started
   - `MINS`: Minutes played
   - `G`: Goals
   - `A`: Assists
   - `SHTS`: Shots
   - `SOG`: Shots on goal
   - `GWG`: Game-winning goals
   - `PKG/A`: Penalty kicks goals/attempted
   - `Hm

G`: Home goals
   - `RdG`: Road goals
   - `G/90min`: Goals per 90 minutes
   - `SC%`: Shot conversion percentage
   - `GWA`: Game-winning assists
   - `HmA`: Home assists
   - `RdA`: Road assists
   - `A/90min`: Assists per 90 minutes
   - `FC`: Fouls committed
   - `FS`: Fouls suffered
   - `OFF`: Offsides
   - `YC`: Yellow cards
   - `RC`: Red cards
   - `SOG%`: Shots on goal percentage
   - `Year`: Year
   - `Season`: Season (e.g., regular season)

3. `conference_games` table:

   - `Pos`: Position
   - `Team`: Team name
   - `GP`: Games played
   - `W`: Wins
   - `L`: Losses
   - `SW`: Shootout wins
   - `GF`: Goals for
   - `GA`: Goals against
   - `GD`: Goal difference
   - `Pts`: Points
   - `Qualification`: Qualification status
   - `Conference`: Conference (Eastern/Western)
   - `Year`: Year
   - `SL`: Season league rank
   - `D`: Division
   - `Head-to-head`: Head-to-head record
   - `PPG`: Points per game

4. `player_ratings` table:

   - `PLAYER`: Player's name
   - `CLUB`: Club name
   - `POS`: Player's position
   - `OVR`: Overall rating
   - `PAC`: Pace rating
   - `SHO`: Shooting rating
   - `PAS`: Passing rating
   - `DRI`: Dribbling rating
   - `DEF`: Defending rating
   - `PHY`: Physical rating

---

Feel free to explore the provided MLS data, write SQL queries to answer the questions, and further analyze the dataset. Happy coding!
