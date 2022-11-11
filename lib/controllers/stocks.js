const { Router } = require('express');
const { Stock } = require('../models/Stock.js');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const stock = await Stock.getById(req.params.id);
    res.json(stock);
  })
  .get('/', async (req, res) => {
    const stocks = await Stock.getAll();
    const filtered = stocks.map(({ id, ticker, company_name }) => ({
      id,
      ticker,
      company_name,
    }));
    res.json(filtered);
  });
