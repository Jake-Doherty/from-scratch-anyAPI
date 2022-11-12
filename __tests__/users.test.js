const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { users } = require('../lib/users-data.js');

describe('users routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('/users should return a list of users', async () => {
    const resp = await request(app).get('/users');
    const expected = users.map((user) => {
      return {
        id: user.id,
        first_name: user.first_name,
        last_name: user.last_name,
      };
    });
    expect(resp.body).toEqual(expected);
  });
  afterAll(() => {
    pool.end();
  });
});
