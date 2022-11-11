const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { stocks } = require('../lib/stocks-data.js');

describe('stocks routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('/stocks/:id should show the detail of a stock by id', async () => {
    const resp = await request(app).get('/stocks/1');
    const ikonics = {
      id: '1',
      ticker: 'IKNX',
      company_name: 'Ikonics Corporation',
      market_cap: '$16.39M',
      market: 'NASDAQ',
      stock_sector: 'Miscellaneous',
    };
    expect(resp.body).toEqual(ikonics);
  });
  it('/stocks should get a list of all stocks', async () => {
    const resp = await request(app).get('/stocks');
    const expected = stocks.map((stock) => {
      return {
        id: stock.id,
        ticker: stock.ticker,
        company_name: stock.company_name,
      };
    });
    expect(resp.body).toEqual(expected);
  });
  afterAll(() => {
    pool.end();
  });
});
