const { Router } = require('express');
const { User } = require('../models/User.js');

module.exports = Router().get('/', async (req, res) => {
  const users = await User.getAll();
  const filtered = users.map(({ id, first_name, last_name }) => ({
    id,
    first_name,
    last_name,
  }));
  res.json(filtered);
});
