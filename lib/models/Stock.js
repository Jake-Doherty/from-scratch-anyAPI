const pool = require('../utils/pool.js');

class Stock {
  id;
  ticker;
  company_name;

  constructor(row) {
    this.id = row.id;
    this.ticker = row.ticker;
    this.company_name = row.company_name;
    this.market_cap = row.market_cap;
    this.market = row.market;
    this.stock_sector = row.stock_sector;
  }

  static async getAll() {
    const { rows } = await pool.query(`
    select 
      * 
    from 
      stocks
    `);
    return rows.map((row) => new Stock(row));
  }
}

module.exports = { Stock };
