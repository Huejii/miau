const express = require('express');
const mysql = require('mysql2');
const app = express();

// 데이터베이스 연결 설정
const pool = mysql.createPool({
  host: 'localhost',
  user: 'your_username',
  password: 'your_password',
  database: 'your_database'
});

app.get('/', (req, res) => {
 // 쿼리 실행
 pool.query('SELECT * FROM your_table', (error, results) => {
   if (error) {
     return res.json({ error });
   }

   res.json(results);
 });
});

app.listen(3000, () => console.log(`App is running on port 3000.`));
