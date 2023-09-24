@@@ back 리팩토링 구조 계획

├── db.js
│
├── routes : 각각의 URL 경로에 대한 처리 로직을 정의하는 라우트 핸들러 파일들이 있습니다. 예를 들어, /users 경로에 대한 처리 로직은 routes/users.js 파일에 작성
│   └── your_table.js
│   └── users.js
│   └── places.js
│   └── wiki.js
│   └── comments.js
│
├── controllers : 요청을 받아 적절한 서비스를 호출하고 응답을 반환하는 역할을 하는 컨트롤러 함수가 작성됩니다. 예를 들어 사용자 관련 요청 처리 로직은 controllers/userController.js 파일에 작성
│   └── userController.js
│   └── placeController.js
│   └── wikiController.js
│   └── commentController.js
│
├── services : 비즈니스 로직(예: 데이터베이스 연산)이 구현되어 있습니다. 이런 방식으로 비즈니스 로직과 컨트롤러를 분리함으로써 코드의 재사용성과 유지보수성을 향상
│
├── models : 데이터베이스 스키마나 ORM 모델을 정의
│
├── middlewares : 애플리케이션 전체 혹은 특정 라우터에서 공통적으로 사용되는 미들웨어 함수를 정의
│
├── config : 환경별 설정 정보 (데이터베이스 접속 정보, API 키 등)를 담는 폴더
│
└── server.js
