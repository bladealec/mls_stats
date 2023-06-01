-- Creating the all_goalkeepers table
CREATE TABLE all_goalkeepers (
  Player VARCHAR(100),
  Club VARCHAR(100),
  POS VARCHAR(10),
  GP INT,
  GS INT,
  MINS INT,
  SHTS INT,
  SV INT,
  GA INT,
  GAA FLOAT,
  PKG_A VARCHAR(10),
  W INT,
  L INT,
  T INT,
  ShO INT,
  W_PCT FLOAT,
  Sv_PCT FLOAT,
  Year INT,
  Season VARCHAR(10)
);

-- Creating the all_players table
CREATE TABLE all_players (
  Player VARCHAR(100),
  Club VARCHAR(100),
  POS VARCHAR(10),
  GP INT,
  GS INT,
  MINS INT,
  G INT,
  A INT,
  SHTS INT,
  SOG INT,
  GWG INT,
  PKG_A VARCHAR(10),
  HmG INT,
  RdG INT,
  G_90min FLOAT,
  SC_PCT FLOAT,
  GWA INT,
  HmA INT,
  RdA INT,
  A_90min FLOAT,
  FC INT,
  FS INT,
  OFF INT,
  YC INT,
  RC INT,
  SOG_PCT FLOAT,
  Year INT,
  Season VARCHAR(10)
);

-- Creating the conference_games table
CREATE TABLE conference_games (
  Pos FLOAT,
  Team VARCHAR(100),
  GP INT,
  W INT,
  L INT,
  SW FLOAT,
  GF INT,
  GA INT,
  GD VARCHAR(10),
  Pts VARCHAR(100),
  Qualification VARCHAR(100),
  Conference VARCHAR(100),
  Year INT,
  SL VARCHAR(100),
  D VARCHAR(100),
  Head_to_head VARCHAR(100),
  PPG FLOAT
);

-- Creating the player_ratings table
CREATE TABLE player_ratings (
  PLAYER VARCHAR(100),
  CLUB VARCHAR(100),
  POS VARCHAR(10),
  OVR INT,
  PAC INT,
  SHO INT,
  PAS INT,
  DRI INT,
  DEF INT,
  PHY INT
);
