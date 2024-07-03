const { Client } = require('pg');

// Database connection details
const client = new Client({
  user: 'postgres',
  host: 'postgres',  // or use the service name if running inside Docker, e.g., 'postgres'
  database: 'DB1',
  password: 'pass123',
  port: 5432,
});

// Function to check database connectivity
async function checkDatabase() {
  try {
    // Connect to the database
    await client.connect();
    console.log('Connected to the database. XXXXXX');

    // Query to list all tables in the public schema
    const res = await client.query(`
      SELECT table_schema, table_name 
      FROM information_schema.tables
      WHERE table_schema = 'public'
      ORDER BY table_schema, table_name;
    `);

    // Log the tables
    console.log('Tables in the database:');
    res.rows.forEach(row => {
      console.log(`Schema: ${row.table_schema}, Table: ${row.table_name}`);
    });

  } catch (err) {
    // Handle connection errors
    console.error('Database connection error:', err.stack);
  } finally {
    // Always close the connection
    await client.end();
    console.log('Disconnected from the database.');
  }
}

// Run the checkDatabase function
checkDatabase();
