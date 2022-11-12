-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS stocks CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE
  stocks (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    ticker VARCHAR NOT NULL,
    company_name VARCHAR NOT NULL,
    market_cap VARCHAR NOT NULL,
    market VARCHAR NOT NULL,
    stock_sector VARCHAR NOT NULL
  );

INSERT INTO
  stocks (ticker, company_name, market_cap, market, stock_sector)
VALUES
  ('IKNX', 'Ikonics Corporation', '$16.39M', 'NASDAQ', 'Miscellaneous'),
  ('BML^L', 'Bank of America Corporation', 'n/a', 'NYSE', 'n/a'),
  ('MD', 'Mednax, Inc', '$5.26B', 'NYSE', 'Health Care'),
  ('BWLD', 'Buffalo Wild Wings, Inc.', '$2.24B', 'NASDAQ', 'Consumer Services'),
  ('SITE', 'SiteOne Landscape Supply, Inc.', '$1.97B', 'NYSE', 'Consumer Non-Durables'),
  ('DCI', 'Donaldson Company, Inc.', '$6.19B', 'NYSE', 'Capital Goods'),
  ('IO', 'Ion Geophysical Corporation', '$50.45M', 'NYSE', 'Energy'),
  ('JXSB', 'Jacksonville Bancorp Inc.', '$53.85M', 'NASDAQ', 'Finance'),
  ('CHKP', 'Check Point Software Technologies Ltd.', '$18.26B', 'NASDAQ', 'Technology'),
  ('COT', 'Cott Corporation', '$1.97B', 'NYSE', 'Consumer Non-Durables');



CREATE TABLE
  users (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    avatar VARCHAR NOT NULL,
    ip_address VARCHAR NOT NULL
  );

INSERT INTO
  users (first_name, last_name, email, avatar, ip_address)
VALUES
  ('Lannie', 'Sherrott', 'lsherrott0@google.com.au', 'https://robohash.org/utlaboreofficia.png?size=50x50&set=set1', '89.235.66.8'),
  ('Noam', 'Tandey', 'ntandey1@networkadvertising.org', 'https://robohash.org/estquiaquisquam.png?size=50x50&set=set1', '159.130.126.113'),
  ('Lusa', 'Spirritt', 'lspirritt2@washingtonpost.com', 'https://robohash.org/occaecatiatrerum.png?size=50x50&set=set1', '192.126.34.10'),
  ('Clarisse', 'Hubach', 'chubach3@shinystat.com', 'https://robohash.org/essesaepenesciunt.png?size=50x50&set=set1', '178.85.93.70'),
  ('Dianemarie', 'Griffen', 'dgriffen4@earthlink.net', 'https://robohash.org/repellendusmagnineque.png?size=50x50&set=set1', '87.43.194.43'),
  ('Anitra', 'Barnard', 'abarnard5@ovh.net', 'https://robohash.org/debitisinsunt.png?size=50x50&set=set1', '31.181.186.249'),
  ('Yankee', 'Santostefano', 'ysantostefano6@examiner.com', 'https://robohash.org/etvelaut.png?size=50x50&set=set1', '130.247.78.224'),
  ('Joeann', 'Nisbith', 'jnisbith7@chronoengine.com', 'https://robohash.org/totamassumendavitae.png?size=50x50&set=set1', '87.51.204.15'),
  ('Dru', 'Agar', 'dagar8@wordpress.org', 'https://robohash.org/sequiestsed.png?size=50x50&set=set1', '172.2.143.141'),
  ('Gaylene', 'Waleworke', 'gwaleworke9@adobe.com', 'https://robohash.org/quisitut.png?size=50x50&set=set1', '29.5.235.90')