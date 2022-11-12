const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { users } = require('../lib/users-data.js');

describe('users routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('/users/:id should show the detail of a user by id', async () => {
    const resp = await request(app).get('/users/1');
    const Lannie = {
      id: '1',
      first_name: 'Lannie',
      last_name: 'Sherrott',
      email: 'lsherrott0@google.com.au',
      avatar: 'https://robohash.org/utlaboreofficia.png?size=50x50&set=set1',
      ip_address: '89.235.66.8',
    };
    expect(resp.body).toEqual(Lannie);
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
