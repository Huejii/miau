const express = require('express');
const app = express();
const path = require('path');

// 정적 파일 제공 설정 (build 폴더)
app.use(express.static(path.join(__dirname, 'build')));

// 모든 요청에 대해 index.html 반환 (SPA 라우팅 처리)
app.get('*', function(req, res) {
  res.sendFile(path.join(__dirname, 'build', 'index.html'));
});

// 서버 시작
const port = process.env.PORT || 8000;

 app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
 });
 
