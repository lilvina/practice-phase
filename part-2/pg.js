const { Client } = require('pg-promise')
const client = new Client({
  user: 'davinataylor',
  host: 'localhost',
  database: process.env.NODE_ENV === 'test' ? 'hotel_db_test' : 'db_hotel',
  port: '5432',
})
client.connect()

module.exports = client