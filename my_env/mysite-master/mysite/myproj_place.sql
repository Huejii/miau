BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "myproj_place" (
	"id"	integer NOT NULL,
	"loc_num"	text,
	"location"	text,
	"image"	varchar(100),
	"explain"	text,
	"lecture_info"	text,
	"updated_at"	datetime NOT NULL,
	"created_at"	datetime NOT NULL,
	"building_name"	text,
	"floor"	text,
	"category"	text,
	"wiki"	text,
	"coords"	text,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "myproj_place" VALUES (1,'1001','대학원 세미나실','2d_map/paldal_10F.png','대학원 세미나실','','2023-05-18 15:13:10.065515','2023-05-08 21:26:00','팔달관','10','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (2,'1002','대학원 세미나실','2d_map/paldal_10F.png','대학원 세미나실','','2023-05-18 17:27:32.760810','2023-05-08 21:26:00','팔달관','10','강의실','changed in 0518 17:15',NULL);
INSERT INTO "myproj_place" VALUES (3,'1003','SW특성화대학원 세미나실','2d_map/paldal_10F.png','SW특성화대학원 세미나실','','2023-05-18 14:14:56.990627','2023-05-08 21:26:00','팔달관','10','강의실','10층에 위치한 매우 큰 세미나실',NULL);
INSERT INTO "myproj_place" VALUES (4,'1003-1','신원재','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (5,'1004','박현지','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (6,'1004-1','안정섭','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (7,'1005','전용호','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (8,'1006','이재성','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (9,'1007','이철기','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (10,'1008','화물운송연구실','2d_map/paldal_10F.png','화물운송연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (11,'1009','이상수','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (12,'1010','김민경,서주영','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (13,'1011','Yenewondim Biadgie Sinshaw,Rajib Paul','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (14,'1012','최근경,박원철','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (15,'1013','이중섭','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (16,'1020','첨단교통관리 및 정보시스템 실험실(ATMIS)','2d_map/paldal_10F.png','첨단교통관리 및 정보시스템 실험실(ATMIS),교통정보실습실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (17,'1021','첨단교통관리 및 정보시스템 실험실(ATMIS)','2d_map/paldal_10F.png','첨단교통관리 및 정보시스템 실험실(ATMIS),교통운영실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (18,'1022','첨단교통연구실','2d_map/paldal_10F.png','첨단교통연구실,교통공학연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (19,'1024','건설시스템멀티미디어실','2d_map/paldal_10F.png','건설시스템멀티미디어실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','PC실','',NULL);
INSERT INTO "myproj_place" VALUES (20,'1025','강의실','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (21,'1003-2','Ashutosh Sharma Kumar Mohit','2d_map/paldal_10F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','10','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (22,'1004-2','김상훈','2d_map/paldal_10F.png','','','2023-05-19 17:32:58.421911','2023-05-08 21:26:00','팔달관','10','교수연구실','Systems Software Lab(SSLA) 연구실을 운영 중이며 주요 연구 분야는 Computer systems, operating systems등등이 있습니다. 시스템 소프트웨어 연구실에서는 운영체제를 포함한 시스템 소프트웨어 전 분야에 대해 연구합니다. 특히 non-volatile memory 및 distributed memory system을 포함한 memory system, SSD나 key-value store 등의 storage system, InfiniBand를 활용한 RDMA 등을 연구하고 있습니다.',NULL);
INSERT INTO "myproj_place" VALUES (23,'901-3','DB/DC 연구실','2d_map/paldal_9F.png','DB/DC 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (24,'901-2','아이콘즈(iCONS) 연구실','2d_map/paldal_9F.png','아이콘즈(iCONS) 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (25,'902','우주정보·VLBI연구센터','2d_map/paldal_9F.png','우주정보·VLBI연구센터','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (26,'903-1','정태선','2d_map/paldal_9F.png','','','2023-05-19 17:28:02.570916','2023-05-08 21:26:00','팔달관','9','교수연구실','DBDC 연구실을 운영 중이며 해당 연구실에서는 최신 데이터베이스 전반 기술과 시스템 신뢰성에 대한 연구를 수행한다. 즉, 플래시 메모리 기반 데이터베이스 시스템, 빅데이터 처리, 웹 데이터베이스, XML 데이터베이스, 위치 기반 서비스, 텔레매틱스 및 Dependable Computing, Software Assurance, Safety-Critical Systems에 대한 연구를 수행하고 있다.',NULL);
INSERT INTO "myproj_place" VALUES (27,'903-2','이재현','2d_map/paldal_9F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (28,'904-1','신귀암','2d_map/paldal_9F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (29,'904-2','김두한','2d_map/paldal_9F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (30,'905-1','소프트웨어 플랫폼 연구실','2d_map/paldal_9F.png','소프트웨어 플랫폼 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (31,'906','이동멀티미디어통신네트워크연구실','2d_map/paldal_9F.png','이동멀티미디어통신네트워크연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (32,'908-1','컴퓨터 시스템 연구실','2d_map/paldal_9F.png','컴퓨터 시스템 연구실,WISE 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (33,'908-2','MOCVD 연구실,반도체실험실','2d_map/paldal_9F.png','MOCVD 연구실,반도체실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (34,'913-1','인공지능연구실','2d_map/paldal_9F.png','인공지능연구실, 황원준 교수님 소속 대학원생 랩실,','','2023-05-08 21:53:34.642851','2023-05-08 21:26:00','팔달관','9','연구실','황원준, 오상은, 이석원  교수님 소속 대학원생 랩실',NULL);
INSERT INTO "myproj_place" VALUES (35,'913-1','NISE 소프트웨어공학연구실','2d_map/paldal_9F.png','NISE 소프트웨어공학연구실,','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (36,'913-2','데이터베이스, Web Innovation연구실','2d_map/paldal_9F.png','데이터베이스,Web Innovation연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (37,'801','윤현진','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (38,'802','김용성','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (39,'803','윤현철','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (40,'804','이평천','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (41,'805','변상요','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (42,'806','유태현','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (43,'807','조영종','2d_map/paldal_8F.png','','','2023-05-19 17:22:49.361053','2023-05-08 21:26:00','팔달관','8','교수연구실','Computer Communications Lab(컴퓨터 통신 연구실) 운영 중이며 유, 무선 네트워크를 연구한다.',NULL);
INSERT INTO "myproj_place" VALUES (44,'808','김성수','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (45,'809','임재성','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (46,'810','박범','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (47,'811','왕지남','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (48,'812','신영철','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (49,'813','정준하','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (50,'814','정명철','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (51,'815','최진영','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (52,'816','박상철','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (53,'817','양정삼','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (54,'818','신현정','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (55,'821','서형탁','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (56,'822','머신러닝 및 데이터마이닝 연구실','2d_map/paldal_8F.png','머신러닝 및 데이터마이닝 연구실,물류SCM 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (57,'823','모델링 및 시뮬레이션 연구실','2d_map/paldal_8F.png','모델링 및 시뮬레이션 연구실,통합 디지털제조 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (58,'824','산업공학과 준비실','2d_map/paldal_8F.png','산업공학과 준비실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','기타','',NULL);
INSERT INTO "myproj_place" VALUES (59,'827','화장품과학연구실','2d_map/paldal_8F.png','화장품과학연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (60,'832','식품유래 병원성 세균학실험실','2d_map/paldal_8F.png','식품유래 병원성 세균학실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (61,'701','오상윤','2d_map/paldal_7F.png','','','2023-05-19 17:20:28.570076','2023-05-08 21:26:00','팔달관','7','교수연구실','WISE 연구실을 운영하고 있으며 주요 연구 분야는 다음과 같다. 
데이터센터와 같은 가상화 환경에서 효과적이고 안정적인 자원관리를 위한 핵심 기술연구
(Live Migration, Hotspot 제거 알고리즘, 스케일링 자동화 및 다이나믹 SLA 적용 등)
Structural Indexing 기반의 고성능 RDF 질의 및 저장 시스템 (분산 Cache 및 복합 질의 지원)
Hadoop-MapReduce및 Spark 성능 향상을 위한 핵심 기술 연구
(Heterogeneous 환경에서의 성능 및 안정성, Machine Learning 및 고성능 처리 기반의 3D-Point cloud 데이터 사물인식)
ARM 기반의 에너지 절약형 클러스터/GPU 클러스터 기반의 고성능 컴퓨팅(GPGPU)',NULL);
INSERT INTO "myproj_place" VALUES (62,'702','최영준','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (63,'703','황원준','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (64,'704','신승훈','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (65,'704','이환용','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (66,'705','류기열','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (67,'706','이창구','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (68,'707','유학기','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (69,'708','조인선','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (70,'709','조성범','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (71,'710','고경현','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (72,'711','안병민','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (73,'712','도수일','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (74,'713','조병남','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (75,'714','조현석','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (76,'715','이수훈','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (77,'716','홍민성','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (78,'717','정의진','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (79,'718','최영우','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (80,'722','CAD 연구실,산업인공지능 최적화 연구실,신산업융합기술 연구실','2d_map/paldal_7F.png','CAD 연구실,산업인공지능 최적화 연구실,신산업융합기술 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (81,'723','전산가공실험실','2d_map/paldal_7F.png','전산가공실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (82,'724','지능형다중스케일설계 및 가공','2d_map/paldal_7F.png','지능형다중스케일설계 및 가공','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','','',NULL);
INSERT INTO "myproj_place" VALUES (83,'725','진공제어연구실','2d_map/paldal_7F.png','진공제어연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (84,'726','진동제어연구실','2d_map/paldal_7F.png','진동제어연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (85,'731','기능재료연구실','2d_map/paldal_7F.png','기능재료연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (86,'732','박막공학연구실','2d_map/paldal_7F.png','박막공학연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (87,'733','분말재료연구실','2d_map/paldal_7F.png','분말재료연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (88,'734','나노 에너지/촉매 재료 연구실','2d_map/paldal_7F.png','나노 에너지/촉매 재료 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (89,'735','대학원세미나실','2d_map/paldal_7F.png','대학원세미나실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (90,'601','최수영','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (91,'602','강경란','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (92,'603','이석원','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (93,'604','유종빈','2d_map/paldal_6F.png','','','2023-05-19 17:31:41.479050','2023-05-08 21:26:00','팔달관','6','교수연구실','Computational Intelligence Lab을 운영 중이고 연구 분야는 Deep learning, Artificial Intelligence, Computer Vision 등등이다.',NULL);
INSERT INTO "myproj_place" VALUES (94,'605','고영배','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (95,'606','오상은','2d_map/paldal_6F.png','','','2023-05-19 17:21:03.333659','2023-05-08 21:26:00','팔달관','6','교수연구실','Human-centered Mobile Systems Lab을 운영중',NULL);
INSERT INTO "myproj_place" VALUES (96,'607','유리','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (97,'608','노병희','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (98,'609','변광준','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (99,'610','전영목','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (100,'611','안수현','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (101,'612','이기정','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (102,'613','박보람','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (103,'614','방승진','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (104,'615','신동욱','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (105,'616','이형천','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (106,'617','조수진','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (107,'618','권순선','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (108,'621','수리과학LAB','2d_map/paldal_6F.png','수리과학LAB','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','','',NULL);
INSERT INTO "myproj_place" VALUES (109,'622','해석학연구실','2d_map/paldal_6F.png','해석학연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (110,'624','이동통신연구실','2d_map/paldal_6F.png','이동통신연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (111,'626','문헌복사실','2d_map/paldal_6F.png','문헌복사실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','','',NULL);
INSERT INTO "myproj_place" VALUES (112,'630','컴퓨터통신실험실','2d_map/paldal_6F.png','컴퓨터통신실험실,무선네트워크연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (113,'633','정보통신시큐리티연구실','2d_map/paldal_6F.png','정보통신시큐리티연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (114,'501','김욱','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (115,'502','김종현','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (116,'503','최준원','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (117,'504','박기동','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (118,'505','이분열','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (119,'506','이재응','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (120,'507-1','교수휴게실','2d_map/paldal_5F.png','교수휴게실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','편의시설','',NULL);
INSERT INTO "myproj_place" VALUES (121,'507-2','생명유전체정보학 실험실','2d_map/paldal_5F.png','생명유전체정보학 실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (122,'507-3','오믹스 실험실','2d_map/paldal_5F.png','오믹스 실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (123,'508','박장호','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (124,'509','장일한','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (125,'510','문성곤','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (126,'511','김태용','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (127,'512','윤일수','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (128,'513','오세창','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (129,'514','유정훈','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (130,'515','최기주','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (131,'518','교통운영실','2d_map/paldal_5F.png','교통운영실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','','',NULL);
INSERT INTO "myproj_place" VALUES (132,'519','교통연구소','2d_map/paldal_5F.png','교통연구소,교통연구센터겸토목기술연구센터','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','','',NULL);
INSERT INTO "myproj_place" VALUES (133,'520-1','지반공학연구실','2d_map/paldal_5F.png','지반공학연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (134,'520-2','아시아 콘크리트 연맹 한국 분소','2d_map/paldal_5F.png','아시아 콘크리트 연맹 한국 분소','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','','',NULL);
INSERT INTO "myproj_place" VALUES (135,'520-3','구조연구실','2d_map/paldal_5F.png','구조연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (136,'520-4','수리연구실','2d_map/paldal_5F.png','수리연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (137,'520-5','수자원연구실','2d_map/paldal_5F.png','수자원연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (138,'527','측량기기실','2d_map/paldal_5F.png','측량기기실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','','',NULL);
INSERT INTO "myproj_place" VALUES (139,'530','김은하','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (140,'531','고분자물성실험준비실','2d_map/paldal_5F.png','고분자물성실험준비실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (141,'531-1','세포배양실','2d_map/paldal_5F.png','세포배양실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (142,'533','분자의생명과학실험실','2d_map/paldal_5F.png','분자의생명과학실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (143,'407','SW특성화대학원 전용강의실','2d_map/paldal_4F.png','SW특성화대학원 전용강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (144,'408','소프트웨어융합대학교학팀','2d_map/paldal_4F.png','소프트웨어융합대학교학팀','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (145,'408','소프트웨어융합대학장','2d_map/paldal_4F.png','소프트웨어융합대학장','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','','',NULL);
INSERT INTO "myproj_place" VALUES (146,'408-1','소프트웨어학과 사무실','2d_map/paldal_4F.png','소프트웨어학과 사무실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (147,'408-1','인공지능융합학과 사무실','2d_map/paldal_4F.png','인공지능융합학과 사무실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (148,'408-1','정보통신전문대학원교학팀','2d_map/paldal_4F.png','정보통신전문대학원교학팀','','2023-05-08 21:50:16.774326','2023-05-08 21:26:00','팔달관','4','학과사무실','정통대에 속하는 소웨(소프트웨어학과), 미디어학과, 사보(사이버보안학과), 전자공학과 등에 관련된 업무를 도맡고 있다. 
연락처 : 031-219-1981',NULL);
INSERT INTO "myproj_place" VALUES (149,'409','소프트웨어학과 지정강의실','2d_map/paldal_4F.png','소프트웨어학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (150,'410','소프트웨어학과 지정강의실','2d_map/paldal_4F.png','소프트웨어학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (151,'413','교통계획, 정보체계 연구실','2d_map/paldal_4F.png','교통계획,정보체계 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (152,'414','TOD기반지속가능도시교통연구센터','2d_map/paldal_4F.png','TOD기반지속가능도시교통연구센터','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','','',NULL);
INSERT INTO "myproj_place" VALUES (153,'415','교통조사분석실','2d_map/paldal_4F.png','교통조사분석실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','','',NULL);
INSERT INTO "myproj_place" VALUES (154,'416','항체공학연구실','2d_map/paldal_4F.png','항체공학연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (155,'419','생명나노공학 연구실','2d_map/paldal_4F.png','생명나노공학 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (156,'420','분자생명공학실험실','2d_map/paldal_4F.png','분자생명공학실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (157,'421','화학생물 및 분자생명이미지연구실','2d_map/paldal_4F.png','화학생물 및 분자생명이미지연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (158,'423','시스템 분석평가 연구실','2d_map/paldal_4F.png','시스템 분석평가 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (159,'425','오믹스 실험실','2d_map/paldal_4F.png','오믹스 실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (160,'426','수치해석연구실','2d_map/paldal_4F.png','수치해석연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (161,'427','발효대사공학실험연구실','2d_map/paldal_4F.png','발효대사공학실험연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (162,'428','발효대사공학실험실','2d_map/paldal_4F.png','발효대사공학실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (163,'429','단백질공학연구실','2d_map/paldal_4F.png','단백질공학연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (164,'432','기하통계연구실','2d_map/paldal_4F.png','기하통계연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (165,'435','전산실습실','2d_map/paldal_4F.png','전산실습실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (166,'307','','2d_map/paldal_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (167,'308','응용화학생명공학과 지정강의실','2d_map/paldal_3F.png','응용화학생명공학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','팔달관214-4호 문의',NULL);
INSERT INTO "myproj_place" VALUES (168,'309','소프트웨어학과 지정강의실','2d_map/paldal_3F.png','소프트웨어학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (169,'310','건설시스템공학과 지정강의실','2d_map/paldal_3F.png','건설시스템공학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (170,'311','수학전공멀티미디어실습실','2d_map/paldal_3F.png','수학전공멀티미디어실습실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (171,'315','교통ITS대학원교학팀','2d_map/paldal_3F.png','교통ITS대학원교학팀','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','학과사무실','031-219-1546

화~금 09:00 ~ 18:00
토 09:00 ~ 16:00
12:00 ~ 13:00 점심시간',NULL);
INSERT INTO "myproj_place" VALUES (172,'317','소프트웨어학과 창작스튜디오','2d_map/paldal_3F.png','소프트웨어학과 창작스튜디오','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (173,'318','시스템응용실습실','2d_map/paldal_3F.png','시스템응용실습실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (174,'319','아주산업수학통계센터','2d_map/paldal_3F.png','아주산업수학통계센터','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (175,'323','산업공학과 PC실습실','2d_map/paldal_3F.png','산업공학과 PC실습실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (176,'325','소프트웨어학과 지정강의실','2d_map/paldal_3F.png','소프트웨어학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (177,'328','종합설계실','2d_map/paldal_3F.png','종합설계실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (178,'329','현장실습지원센터','2d_map/paldal_3F.png','현장실습지원센터','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (179,'330','생화학실험실','2d_map/paldal_3F.png','생화학실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (180,'334','소프트웨어학과창작스튜디오','2d_map/paldal_3F.png','소프트웨어학과창작스튜디오','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','커뮤니티공간','18시 이후에 강의실 예약 후 사용(219-2430)

운영시간 : 09:10 ~ 17:50

규모 :３０인

월 목 17:30~21:00 이용불가, 예약x, 대화 가능',NULL);
INSERT INTO "myproj_place" VALUES (181,'337','수학과 사무실','2d_map/paldal_3F.png','수학과 사무실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (182,'','남자화장실','2d_map/paldal_3F.png','비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (183,'','여자화장실','2d_map/paldal_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (184,'319옆','수학과과제물제출함','2d_map/paldal_3F.png','수학과과제물제출함','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','편의시설','',NULL);
INSERT INTO "myproj_place" VALUES (185,'','정수기','2d_map/paldal_3F.png','정수기, 337옆','','2023-05-08 21:26','2023-05-08 21:26','팔달관','3','편의시설','',NULL);
INSERT INTO "myproj_place" VALUES (186,'207','신소재공학과 지정강의실','2d_map/paldal_2F.png','신소재공학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (187,'208','화학공학, 신소재공학, 환경공학, 건설시스템공학, 교통시스템공학과 사무실','2d_map/paldal_2F.png','화학공학, 신소재공학, 환경공학, 건설시스템공학, 교통시스템공학과 사무실','','2023-05-19 17:13:23.036711','2023-05-08 21:26:00','팔달관','2','학과사무실','다양한 공과대학 학과들이 공유하는 학과 사무실',NULL);
INSERT INTO "myproj_place" VALUES (188,'209-1','공과대학원장실','2d_map/paldal_2F.png','공과대학원장실, 박범','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','기타','',NULL);
INSERT INTO "myproj_place" VALUES (189,'209-2','공과대학원 교학팀','2d_map/paldal_2F.png','공과대학원 교학팀','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (190,'210-1','공과대학장실','2d_map/paldal_2F.png','공과대학장실, 박장호','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','기타','',NULL);
INSERT INTO "myproj_place" VALUES (191,'210-2','공과대학교학팀','2d_map/paldal_2F.png','공과대학교학팀, 공학연구소','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (192,'210-3','융합시스템공학과 사무실','2d_map/paldal_2F.png','융합시스템공학과 사무실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (193,'210-4','산업공학과','2d_map/paldal_2F.png','산업공학과, 응용화학생명공학과 사무실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','학과사무실','응화생(031-219-1871), 산공(031-219-2335)',NULL);
INSERT INTO "myproj_place" VALUES (194,'211','교통시스템공학과 지정강의실','2d_map/paldal_2F.png','교통시스템공학과 지정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (195,'212','공학교육혁신센터 자료실','2d_map/paldal_2F.png','공학교육혁신센터 자료실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (196,'214','I Explore Lab','2d_map/paldal_2F.png','I Explore Lab','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (197,'215,216','산업공학 통합 실험실1','2d_map/paldal_2F.png','산업공학 통합 실험실1','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (198,'219','공과대학 프린터실','2d_map/paldal_2F.png','공과대학 프린터실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','편의시설','09:30 ~ 17:00
토 일 및 공휴일 제외

 1인 1일 30매 이내출력, 음식물(음료수포함) 반입 금지, 고장 시 팔210-2로 문의(031-219-2197)',NULL);
INSERT INTO "myproj_place" VALUES (199,'222','산업공학 통합 실험실2','2d_map/paldal_2F.png','산업공학 통합 실험실2','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (200,'223','AI-기반 자동화시스템 연구실','2d_map/paldal_2F.png','AI-기반 자동화시스템 연구실, 인간공학/HCI 연구실, 작업역학 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (201,'224','공학교육혁신센터 자료실','2d_map/paldal_2F.png','공학교육혁신센터 자료실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (202,'230','Active Learning Lab','2d_map/paldal_2F.png','Active Learning Lab','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (203,'233','지능형다중스케일 설계가공실험실','2d_map/paldal_2F.png','지능형다중스케일 설계가공실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (204,'236','지능형다중스케일 설계가공실험실','2d_map/paldal_2F.png','지능형다중스케일 설계가공실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (205,'237','R.P 실습 및 분석장비실','2d_map/paldal_2F.png','R.P 실습 및 분석장비실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (206,'228','기술경영 및 데이터인텔리전스 연구실','2d_map/paldal_2F.png','기술경영 및 데이터인텔리전스 연구실, 빅데이터분석 연구실, 스마트 생산기술 연구실,
인공지능응용 및 사물인터넷 연구실, 조립 및 통합생산 연구실, 품질신뢰성 연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (207,'238','R.P 실습 및 Microscope실','2d_map/paldal_2F.png','R.P 실습 및 Microscope실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (208,'239','기계공학과 제2전용실험실','2d_map/paldal_2F.png','기계공학과 제2전용실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (209,'242','종합설계실','2d_map/paldal_2F.png','종합설계실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (210,'','국민은행ATM','2d_map/paldal_2F.png','국민은행ATM','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','편의시설','07:00~23:30',NULL);
INSERT INTO "myproj_place" VALUES (211,'','정수기','2d_map/paldal_2F.png','정수기, 239옆 계단쪽 (3층과 동일한 위치)','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','편의시설','',NULL);
INSERT INTO "myproj_place" VALUES (212,'','남자화장실','2d_map/paldal_2F.png','장애인, 비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (213,'','여자화장실','2d_map/paldal_2F.png','장애인','','2023-05-08 21:26','2023-05-08 21:26','팔달관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (214,'107','자동녹화강의실','2d_map/paldal_1F.png','자동녹화강의실, 환경안전공학과 전용 강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','강의실','','106,1860,713,2295');
INSERT INTO "myproj_place" VALUES (215,'114','CU','2d_map/paldal_1F.png','CU, 편의점','','2023-05-19 17:16:03.004434','2023-05-08 21:26:00','팔달관','1','편의시설','월 08:00~ 금18:00/ 팔달관 식당에 위치한 편의점. 일신관 편의점 보다는 규모가 작음','2468,1566,2626,1711');
INSERT INTO "myproj_place" VALUES (216,'108','자동녹화강의실','2d_map/paldal_1F.png','자동녹화강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','강의실','','730,1857,1352,2298');
INSERT INTO "myproj_place" VALUES (217,'110','우선배정강의실','2d_map/paldal_1F.png','우선배정강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','강의실','','1813,1854,2382,2292');
INSERT INTO "myproj_place" VALUES (218,'111','자동녹화강의실','2d_map/paldal_1F.png','자동녹화강의실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','강의실','','2406,1851,3063,2292');
INSERT INTO "myproj_place" VALUES (219,'116','팔달관 휴게실','2d_map/paldal_1F.png','팔달관 휴게실, CU, 식당','','2023-05-19 17:15:01.794651','2023-05-08 21:26:00','팔달관','1','편의시설','김밥, 카레 순두부, 라면 등의 식품을 파는 휴게실 겸 식당. 내부에 CU가 존재하며 CU는 24시간이 아니라 식당 운영시간과 유사하게 금요일 18:00에 닫히고 주말 동안은 휴무다.','2135,1061,3063,1549');
INSERT INTO "myproj_place" VALUES (220,'117','나노소자연구실','2d_map/paldal_1F.png','나노소자연구실','','2023-05-11 13:41:26.398780','2023-05-08 21:26:00','팔달관','1','연구실','','1804,1055,2120,1195');
INSERT INTO "myproj_place" VALUES (221,'117-1','공학교육인증 교과목 자료실','2d_map/paldal_1F.png','공학교육인증 교과목 자료실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','학과사무실','','1807,1216,2114,1356');
INSERT INTO "myproj_place" VALUES (222,'122','금속재료실험실','2d_map/paldal_1F.png','금속재료실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','1715,615,2191,915');
INSERT INTO "myproj_place" VALUES (223,'125','생화학분자생물학 실험실','2d_map/paldal_1F.png','생화학분자생물학 실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','1221,615,1364,743');
INSERT INTO "myproj_place" VALUES (224,'127','에너지나노재료연구실','2d_map/paldal_1F.png','에너지나노재료연구실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','연구실','','1055,615,1201,918');
INSERT INTO "myproj_place" VALUES (225,'128','세라믹재료실험실','2d_map/paldal_1F.png','세라믹재료실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','757,615,1043,918');
INSERT INTO "myproj_place" VALUES (226,'129','전자재료실험실','2d_map/paldal_1F.png','전자재료실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','412,618,733,918');
INSERT INTO "myproj_place" VALUES (227,'130','전자재료실험준비실','2d_map/paldal_1F.png','전자재료실험준비실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','228,615,391,921');
INSERT INTO "myproj_place" VALUES (228,'133','재료공학실험실 1','2d_map/paldal_1F.png','재료공학실험실 1','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','109,1061,400,1549');
INSERT INTO "myproj_place" VALUES (229,'134','재료공학실험실 2','2d_map/paldal_1F.png','재료공학실험실 2','','2023-05-23 13:00:39.142865','2023-05-08 21:26:00','팔달관','1','실험실','','421,1064,739,1064,736,1555,591,1561,591,1362,421,1353');
INSERT INTO "myproj_place" VALUES (230,'134-1','XRD/SEM실','2d_map/paldal_1F.png','XRD/SEM실,','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','연구실','','424,1379,564,1549');
INSERT INTO "myproj_place" VALUES (231,'137','재료공학실험실 3','2d_map/paldal_1F.png','재료공학실험실 3','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','757,1064,1043,1552');
INSERT INTO "myproj_place" VALUES (232,'138','광전자재료실험실','2d_map/paldal_1F.png','광전자재료실험실','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','1064,1058,1364,1204');
INSERT INTO "myproj_place" VALUES (233,'138-1','재료공학실험실 4','2d_map/paldal_1F.png','재료공학실험실 4','','2023-05-08 21:26','2023-05-08 21:26','팔달관','1','실험실','','1061,1219,1364,1356');
INSERT INTO "myproj_place" VALUES (234,'','남자화장실','2d_map/paldal_1F.png','비상샤워기 구비','','2023-05-11 19:28:53.301707','2023-05-08 21:26:00','팔달관','1','화장실','팔달관 107 앞에 위치해 있다.','106,1573,641,1716');
INSERT INTO "myproj_place" VALUES (235,'','여자화장실','2d_map/paldal_1F.png','','','2023-05-11 19:29:14.738338','2023-05-08 21:26:00','팔달관','1','화장실','팔달관 111강의실 앞에 위치해 있다.','2646,1567,3063,1710');
INSERT INTO "myproj_place" VALUES (236,'','남자화장실','2d_map/paldal_4F.png','비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (237,'','여자화장실','2d_map/paldal_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (238,'','남자화장실','2d_map/paldal_5F.png','비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (239,'','여자화장실','2d_map/paldal_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','5','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (240,'','남자화장실','2d_map/paldal_6F.png','비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (241,'','여자화장실','2d_map/paldal_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','6','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (242,'','남자화장실','2d_map/paldal_7F.png','비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (243,'','여자화장실','2d_map/paldal_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','7','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (244,'','남자화장실','2d_map/paldal_8F.png','비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (245,'','여자화장실','2d_map/paldal_8F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','8','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (246,'','남자화장실','2d_map/paldal_9F.png','비상샤워기 구비','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (247,'','여자화장실','2d_map/paldal_9F.png','','','2023-05-08 21:26','2023-05-08 21:26','팔달관','9','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (248,'','남자화장실','2d_map/paldal_10F.png','비상샤워기 구비','','2023-05-11 18:14:48.786284','2023-05-08 21:26:00','팔달관','10','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (249,'','여자화장실','2d_map/paldal_10F.png','','','2023-05-11 18:14:38.876473','2023-05-08 21:26:00','팔달관','10','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (250,'101','일반대학원 세미나실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','강의실','','17,2132,450,2479');
INSERT INTO "myproj_place" VALUES (251,'102','강의실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','강의실','','11,1490,444,1990');
INSERT INTO "myproj_place" VALUES (252,'103','AI모빌리티 실험실습실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','실험실','','11,1149,444,1473');
INSERT INTO "myproj_place" VALUES (253,'104','AI모빌리티 전공강의실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','강의실','','17,643,450,1137');
INSERT INTO "myproj_place" VALUES (254,'105','환경안전공학과  전공강의실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','강의실','','6,34,11,620,438,626,444,506,410,495,399,45');
INSERT INTO "myproj_place" VALUES (255,'106','응용화학생명공학과  전공강의실1','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','강의실','','1617,40,2141,478');
INSERT INTO "myproj_place" VALUES (256,'107','응용화학생명공학과  전공강의실2','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','강의실','','');
INSERT INTO "myproj_place" VALUES (257,'108','회의실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','회의실','','2169,40,2738,472');
INSERT INTO "myproj_place" VALUES (258,'109','공과대학교학팀','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','학과사무실','','2761,648,3131,1370');
INSERT INTO "myproj_place" VALUES (259,'109','BK21 켐바이오메디신 교육연구단 분자과학기술학과','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','학과사무실
','','2357,1382,3125,1842');
INSERT INTO "myproj_place" VALUES (260,'110','모빌리티 인공지능 연구실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','연구실','','603,1149,1042,1484');
INSERT INTO "myproj_place" VALUES (261,'111','이수목','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','교수연구실','','615,1507,1048,1791');
INSERT INTO "myproj_place" VALUES (262,'112','강의실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','강의실','','603,1814,1042,2121');
INSERT INTO "myproj_place" VALUES (263,'113','박형주','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','교수연구실','','609,2138,1048,2468');
INSERT INTO "myproj_place" VALUES (264,'201','지능형반도체공학과 대학원 연구실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (265,'202','이종민','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (266,'203','회의실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','회의실','',NULL);
INSERT INTO "myproj_place" VALUES (267,'204','의료원-대학 융합연구실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (268,'205','지능형반도체공학과','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','학과사무실','',NULL);
INSERT INTO "myproj_place" VALUES (269,'206','SW 집중교육실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (270,'207','소회의실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','회의실','',NULL);
INSERT INTO "myproj_place" VALUES (271,'208','대회의실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','회의실','',NULL);
INSERT INTO "myproj_place" VALUES (272,'209','강의실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (273,'210','지능형반도체공학과 설계 실습실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (274,'211','강의실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (275,'301','대학원연구실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (276,'302','의약화학 실험실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (277,'303','의약화학 실험실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (278,'304','산업약학 실험실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (279,'305','산업약학 실험실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (280,'306','위험물 보관창고','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (281,'307','공동기기실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (282,'308','유전자기능추적 실험실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (283,'309','유전자기능추적 실험실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (284,'310','생물의약품 연구실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (285,'311','생물의약품 연구실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (286,'312','공동기기실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (287,'313','임상약학 연구실1','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (288,'314','임상약학 연구실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (289,'315','임상약학 연구실3','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (290,'316','박영준','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (291,'317','진효언','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (292,'318','김주희','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (293,'319','이숙향','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (294,'320','이동주','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (295,'321','이범진','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (296,'401','합성단백질공학 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (297,'402','동물세포공학 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (298,'403','분자의생명과학 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (299,'404','생명화학공학융합 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (300,'405','동물세포배양분석 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (301,'406','위험물 보관창고','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (302,'407','화학생물학 및 치료학 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (303,'408','세포 치료 및 생물정보학 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (304,'409','미생물유전체정보학 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (305,'410','미생물시스템생명공학 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (306,'411','세포배양 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (307,'412','항체 생산 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (308,'413','항체 공학 실험실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (309,'414','항체 설계 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (310,'415','항체 줄기세포 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (311,'416','생명공학 공동기기실1','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (312,'417','생명공학 공동기기실2','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (313,'418','생명화학공학융합 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (314,'419','생명화학공학융합 연구실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (315,'420','이평천','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (316,'421','김욱','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (317,'422','이재성','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (318,'423','박현지','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (319,'424','김용성','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (320,'501','바이오센서 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (321,'502','생명공학 전공 학부실험실1','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (322,'503','병원성미생물학실-I','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (323,'504','하이브리드 반도체소재 및 소자 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (324,'505','응용화학 공동기기실1','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (325,'506','위험물 보관창고','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (326,'507','강의실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (327,'508','하이브리드 반도체소재 및 소자 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (328,'509','기능성유기소재 연구실1','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (329,'510','기능성유기소재 연구실2','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (330,'511','고분자생체재료 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (331,'512','고분자생체재료 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (332,'513','고분자합성 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (333,'514','고분자합성 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (334,'515','고분자생체재료 연구실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (335,'516','기능성유기소재 연구실3','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (336,'517','생명공학 공동기기실3','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (337,'518','병원성미생물학실-II','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (338,'519','바이오센서 준비실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (339,'520','이분열','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (340,'521','유태현','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (341,'522','윤현진','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (342,'523','권오필','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (343,'524','윤현철','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (344,'525','박기동','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (345,'601','재생의학 실험실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (346,'602','무기소재 실험실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (347,'603','에너지무기소재 연구실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (348,'604','분자박약 연구실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (349,'605','분광분석 실험실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (350,'606','위험물 보관창고','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (351,'607','생유기화학 연구실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (352,'608','응용회학 전공 학부실험실1','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (353,'609','응용회학 전공 학부실험실2','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (354,'610','환경화학실험실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (355,'611','나노재료 연구실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (356,'612','나노재료 연구실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (357,'613','응용화학 공동기기실2','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','비품실','',NULL);
INSERT INTO "myproj_place" VALUES (358,'614','생유기화학 연구실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (359,'615','재생위학 연구실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (360,'616','김상욱','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (361,'617','김문석','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (362,'618','강의실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (363,'619','김종현','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (364,'620','최준원','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (365,'621','김재호','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (366,'701','강의실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (367,'702','대기환경 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (368,'703','대기환경 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (369,'704','수질관리 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (370,'705','수질관리 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (371,'706','수질관리 실험준비실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (372,'707','환경공학 PC실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','PC실','',NULL);
INSERT INTO "myproj_place" VALUES (373,'708','대기오염 및 기호변화 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (374,'709','대기오염 및 기호변화 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (375,'710','수처리 공학 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (376,'711','환경기능성소재 및 수처리 실험실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (377,'712','환경생명공학 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (378,'713','환경생명공학 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (379,'714','이근원','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (380,'715','화학물질 공정안전 연구실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','연구실','',NULL);
INSERT INTO "myproj_place" VALUES (381,'716','환경안전공학학과 회의실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','회의실','',NULL);
INSERT INTO "myproj_place" VALUES (382,'717','환경화학 실험준비실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','실험실','',NULL);
INSERT INTO "myproj_place" VALUES (383,'718','신귀암','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (384,'719','강의실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','강의실','',NULL);
INSERT INTO "myproj_place" VALUES (385,'720','김순태','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (386,'721','이창구','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (387,'722','이재영','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (388,'723','정승호','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','교수연구실','',NULL);
INSERT INTO "myproj_place" VALUES (389,'724','최권영','2d_map/hyegang_7F.png','최권영 교수님 연구실','','2023-05-19 17:00:36.963248','2023-05-08 21:26:00','혜강관','7','교수연구실','환경 생명 공학-생분해 바이오 플라스틱 및 환경 독성에 관한 연구를 하는 교수님의 연구실',NULL);
INSERT INTO "myproj_place" VALUES (390,'','남자화장실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','화장실','','416,45,746,483');
INSERT INTO "myproj_place" VALUES (391,'','여자화장실','2d_map/hyegang_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','1','화장실','','757,40,1053,478');
INSERT INTO "myproj_place" VALUES (392,'','남자화장실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (393,'','여자화장실','2d_map/hyegang_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (394,'','남자화장실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (395,'','여자화장실','2d_map/hyegang_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (396,'','남자화장실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (397,'','여자화장실','2d_map/hyegang_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (398,'','남자화장실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (399,'','여자화장실','2d_map/hyegang_5F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','5','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (400,'','남자화장실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (401,'','여자화장실','2d_map/hyegang_6F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','6','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (402,'','남자화장실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (403,'','여자화장실','2d_map/hyegang_7F.png','','','2023-05-08 21:26','2023-05-08 21:26','혜강관','7','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (404,'','안내데스크','2d_map/hyegang_1F.png','','','2023-05-11 18:07:16.215298','2023-05-08 21:26:00','혜강관','1','편의시설','',NULL);
INSERT INTO "myproj_place" VALUES (405,'','무인대출반납기','2d_map/library_1F.png','도서 대출 및 반납 처리','','2023-05-08 21:36:49.482685','2023-05-08 21:26:00','중앙도서관','1','기타','평일 9:00~21:00, 토 10:00~16:00, 일요일 운영 안함
중도에 설치된 여러 대의 무인 반납기 중 하나. 그 중에서도 1층 카페 쪽 입구에 설치된 무인반납기로 운영 외 시간에는 운동장 쪽 출입구 반납함을 이용해야 한다.
반납 불가능 도서 : 보존도서, 예약도서, 비도서, 타관도서, 딸림자료(부록)도서
반납 시 문자가 발송된다.',NULL);
INSERT INTO "myproj_place" VALUES (406,'127','카페027','2d_map/library_1F.png','도서관 카페','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','편의시설','9:00~21:00
50인 규모
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (407,'101','서비스데스크','2d_map/library_1F.png','도서관 서비스 데스크','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','편의시설','9:00~21:00
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (408,'102','도서관운영실','2d_map/library_1F.png','서비스 데스크와 함께 있는 도서관 운영실','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','편의시설','9:00~21:00
토요일 9:00~16:00

서비스 데스크와 붙어 있는 도서관 운영실이다.',NULL);
INSERT INTO "myproj_place" VALUES (409,'103','멀티미디어실','2d_map/library_1F.png','예약제, 인터넷, 문서작성, PC이용, 사이버강의 청취, 각종 멀티미디어 자료 서가 존재, 유료 프린터실 존재','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','학습실','9:00~21:00
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (410,'109','자료실','2d_map/library_1F.png','1층 자료 및 도서 열람','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','학습실','9:00~21:00
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (411,'104','커넥팅라운지','2d_map/library_1F.png','자료실/커뮤니티 라운지/커라, 노트북 사용가능, 작은 대화 가능, 예약x','','2023-05-08 21:43:12.411110','2023-05-08 21:26:00','중앙도서관','1','커뮤니티공간','9:00~21:00
50인 규모
토요일 9:00~16:00

도서관의 3개의 구분 공간 중 Collaboration Area 공간에 속하는 공간으로 편안한 대화를 허용하고, 그룹 토의, 과제 해결을 위한 소통공간이다. 다만 실제로 토의를 하며 대화하는 사람들은 찾아보기 힘들다. 랩탑 및 노트북 사용이 허가된다.',NULL);
INSERT INTO "myproj_place" VALUES (412,'105','세미나룸','2d_map/library_1F.png','5인이상의 활동, 예약제, 멀티미디어 자료 활용한 수업 및 교육, 행사, 음식 반입 금지','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','회의실','',NULL);
INSERT INTO "myproj_place" VALUES (413,'106','스마트라운지','2d_map/library_1F.png','오픈라운지(예약x, 팀플), Vroom(예약제, 최대4인), 팀플공간(예약제, 스마트보드이용가능, 4~7인실, 3~5인실)','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','커뮤니티공간','9:00~21:00
TProject & VRoom 평일 10:00~17:00',NULL);
INSERT INTO "myproj_place" VALUES (414,'107','정보지원실','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','편의시설','도서관 정보 및 커뮤니티 라운지 측에 대해 질문하고 싶다면 여기로.',NULL);
INSERT INTO "myproj_place" VALUES (415,'108','도서관장실','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','편의시설','',NULL);
INSERT INTO "myproj_place" VALUES (416,'911','정수기','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','기타','물을 마실 수 있는 정수기이다. 개인 컵을 권장한다.',NULL);
INSERT INTO "myproj_place" VALUES (417,'912','정수기','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','기타','물을 마실 수 있는 정수기이다. 개인 컵을 권장한다.',NULL);
INSERT INTO "myproj_place" VALUES (418,'110','북측 남자 화장실','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (419,'112','북측 여자 화장실','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (420,'113','남측 남자 화장실','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (421,'114','남측 여자 화장실','2d_map/library_1F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (422,'999','ATM기기','2d_map/library_1F.png','국민은행 ATM기기','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','기타','국민은행 ATM기기 (20년도 이전에는 SC 제일은행이었다)',NULL);
INSERT INTO "myproj_place" VALUES (423,'','무인대출반납기','2d_map/library_2F.png','도서 대출 및 반납 처리','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','기타','9:00~21:00',NULL);
INSERT INTO "myproj_place" VALUES (424,'209','자료실','2d_map/library_2F.png','2층 자료 및 도서 열람','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','학습실','9:00~21:00
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (425,'201','서비스데스크','2d_map/library_2F.png','도서관 info, 서비스 데스크','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','편의시설','9:00~21:00
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (426,'202','자료검색용PC','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','편의시설','9:00~21:00
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (427,'921','정수기','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','기타','',NULL);
INSERT INTO "myproj_place" VALUES (428,'922','정수기','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','기타','',NULL);
INSERT INTO "myproj_place" VALUES (429,'205','북측 남자 화장실','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (430,'206','북측 여자 화장실','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (431,'207','남측 남자 화장실','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (432,'208','남측 여자 화장실','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (433,'203','토론학습실','2d_map/library_2F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','2','커뮤니티공간','24시간
커뮤니티 라운지 남자 화장실 넘어 위치한 토론 학습실이다. 공사 및 개편이 자주 일어난다.',NULL);
INSERT INTO "myproj_place" VALUES (434,'204','커뮤니티라운지','2d_map/library_2F.png','커라/그룹토의/팀프/','','2023-05-08 21:46:26.515636','2023-05-08 21:26:00','중앙도서관','2','커뮤니티공간','24시간/138인 규모
재학생, 휴학생, 대학원 수료생이 이용가능하며 도서관 공간의 소음허용 3단계(silent, quiet, collaboration) 중 중간 단계인 quiet 단계의 공간이다. 웃고 떠들 수 있는 커뮤니티 라운지 라고 이야기하는 사람도 있으나 실제로는 웃고 떠들기 조금 어렵다.',NULL);
INSERT INTO "myproj_place" VALUES (435,'','무인대출반납기','2d_map/library_3F.png','도서 대출 및 반납 처리','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','기타','9:00~21:00',NULL);
INSERT INTO "myproj_place" VALUES (436,'309','자료실','2d_map/library_3F.png','3층 자료 및 도서 열람','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','학습실','9:00~21:00
3층 도서 및 자료를 열람할 수 있다.',NULL);
INSERT INTO "myproj_place" VALUES (437,'931','정수기','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','기타','',NULL);
INSERT INTO "myproj_place" VALUES (438,'932','정수기','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','기타','',NULL);
INSERT INTO "myproj_place" VALUES (439,'3001','북측 남자 화장실','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (440,'3002','북측 여자 화장실','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (441,'3003','남측 남자 화장실','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (442,'3004','남측 여자 화장실','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (443,'301','열람실','2d_map/library_3F.png','3층 열람실, 독서, 자료 열람','','2023-05-19 17:08:06.214561','2023-05-08 21:26:00','중앙도서관','3','학습실','474인 규모/ 운영시간 : 7:00~23:00 의 매우 큰 열람실로 도서관 내에서 운동장 방향에 위치하고 있다.',NULL);
INSERT INTO "myproj_place" VALUES (444,'302','고시반','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','학습실','',NULL);
INSERT INTO "myproj_place" VALUES (445,'303','자료실','2d_map/library_3F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','3','학습실','9:00~21:00
토요일 9:00~16:00',NULL);
INSERT INTO "myproj_place" VALUES (446,'','무인대출반납기','2d_map/library_4F.png','도서 대출 및 반납 처리','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','기타','9:00~21:00',NULL);
INSERT INTO "myproj_place" VALUES (447,'409','자료실','2d_map/library_4F.png','','','2023-05-19 17:04:57.572214','2023-05-08 21:26:00','중앙도서관','4','학습실','운영시간 : 9:00~21:00',NULL);
INSERT INTO "myproj_place" VALUES (448,'401','대학사료실','2d_map/library_4F.png','','','2023-05-19 17:05:44.662866','2023-05-08 21:26:00','중앙도서관','4','편의시설','사회과학 책장 옆에 위치한 곳으로 매우 큰 사료실이다.',NULL);
INSERT INTO "myproj_place" VALUES (449,'402','열람실','2d_map/library_4F.png','','','2023-05-08 21:47:40.349417','2023-05-08 21:26:00','중앙도서관','4','학습실','310인 규모/ 24시간
4층 열람실로, 무엇을 열람하는 지는 모르겠지만 독서실 느낌이다. 도서관 내 소음 허용 구분 3단계 중 가장 조용함을 요구하는 silent 단계의 공간이다.',NULL);
INSERT INTO "myproj_place" VALUES (450,'403','토론학습실','2d_map/library_4F.png','4층 열람실, 독서, 자료 열람','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','커뮤니티공간','열람실 4층 계단 우측에 있는 토론학습실이다. 토론학습실 내부에는 사물함이 있다.',NULL);
INSERT INTO "myproj_place" VALUES (451,'941','정수기','2d_map/library_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','기타','',NULL);
INSERT INTO "myproj_place" VALUES (452,'942','정수기','2d_map/library_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','기타','',NULL);
INSERT INTO "myproj_place" VALUES (453,'4001','북측 남자 화장실','2d_map/library_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (454,'4002','북측 여자 화장실','2d_map/library_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (455,'4003','남측 남자 화장실','2d_map/library_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (456,'4004','남측 여자 화장실','2d_map/library_4F.png','','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','4','화장실','',NULL);
INSERT INTO "myproj_place" VALUES (457,'111','중앙정원','2d_map/library_1F.png','도서관 중앙정원','','2023-05-08 21:26','2023-05-08 21:26','중앙도서관','1','편의시설','',NULL);
COMMIT;
