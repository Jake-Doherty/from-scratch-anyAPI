-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE
  IF EXISTS stocks;

CREATE TABLE
  stocks (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    symbol VARCHAR NOT NULL,
    company_name VARCHAR NOT NULL,
    market_cap VARCHAR NOT NULL,
    market VARCHAR NOT NULL,
    stock_sector VARCHAR NOT NULL
  );

INSERT INTO
  stocks (symbol, company_name, market_cap, market, stock_sector)
VALUES
  ('IKNX', 'Ikonics Corporation', '$16.39M', 'NASDAQ', 'Miscellaneous'),
  ('BML^L', 'Bank of America Corporation', 'n/a', 'NYSE', 'n/a'),
  ('COT', 'Cott Corporation', '$1.97B', 'NYSE', 'Consumer Non-Durables'),
  ('CHKP', 'Check Point Software Technologies Ltd.', '$18.26B', 'NASDAQ', 'Technology'),
  ('JXSB', 'Jacksonville Bancorp Inc.', '$53.85M', 'NASDAQ', 'Finance'),
  ('IO', 'Ion Geophysical Corporation', '$50.45M', 'NYSE', 'Energy'),
  ('DCI', 'Donaldson Company, Inc.', '$6.19B', 'NYSE', 'Capital Goods'),
  ('SITE', 'SiteOne Landscape Supply, Inc.', '$1.97B', 'NYSE', 'Consumer Non-Durables'),
  ('BWLD', 'Buffalo Wild Wings, Inc.', '$2.24B', 'NASDAQ', 'Consumer Services'),
  ('MD', 'Mednax, Inc', '$5.26B', 'NYSE', 'Health Care')