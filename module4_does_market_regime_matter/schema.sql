
-- Quiet Signals: Module 4
-- Table: nifty_daily
-- Stores Nifty 50 daily price data with ADX regime classifications

CREATE TABLE IF NOT EXISTS nifty_daily (
    date          DATE PRIMARY KEY,
    close         FLOAT,
    high          FLOAT,
    low           FLOAT,
    daily_return  FLOAT,
    adx           FLOAT,
    di_plus       FLOAT,
    di_minus      FLOAT,
    regime        VARCHAR(20)
);
