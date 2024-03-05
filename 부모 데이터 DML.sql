--부모 데이터 DML

-- 온라인 강의 tblOnlinelecture 완료
insert into tblOnlineLecture values (1,'화면설계');
insert into tblOnlineLecture values(2,'화면구현');
insert into tblOnlineLecture values(3,'웹 표준에 맞는 HTML5 프로그래밍');
insert into tblOnlineLecture values(4,'JavaScript 기초');
insert into tblOnlineLecture values(5,'요구사항 확인2');
insert into tblOnlineLecture values(6,'웹 앱 개발을 위한 JSP');
insert into tblOnlineLecture values(7,'AWS와 Elasticsearch 활용');

-- 강의 진행 여부 tblCurriculumProgress 완료
insert into tblCurriculumProgress values(1,'강의 진행 예정');
insert into tblCurriculumProgress values(2,'강의 진행 중');
insert into tblCurriculumProgress values(3,'강의 종료');

--강의실
insert into tblRoom values (1, '1 강의실', 30, 'SIST_1', 'sist34821');
insert into tblRoom values (2, '2 강의실', 30, 'SIST_2', 'sist34821');
insert into tblRoom values (3, '3 강의실', 30, 'SIST_3', 'sist34821');
insert into tblRoom values (4, '4 강의실', 26, 'SIST_4', 'sist34821');
insert into tblRoom values (5, '5 강의실', 26, 'SIST_5', 'sist34821');
insert into tblRoom values (6, '6 강의실', 26, 'SIST_6', 'sist34821');

--교육생
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (1, '천유서', 'D9TUYJOG07', 4760829, '01097751191', '23/08/05', '신한은행', '842-330-403393');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (2, '양기탁', 'BMTITRQUQDQ', 3752621, '01080543905', '23/10/31', '우리은행', '788-703-369788');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (3, '류함맹', '5MPSNISEF', 7274122, '01066590732', '23/11/22', '카카오뱅크', '413-014-111155');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (4, '고방한', '6JHILWKEFS', 5538608, '01017625513', '23/10/05', '농협은행', '950-448-045228');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (5, '맹천맹', 'KECU', 2022264, '01078584063', '24/02/22', '국민은행', '242-285-669812');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (6, '박류조', '4LL65I7ADW', 7696713, '01012390418', '23/10/12', '신한은행', '522-50-146215');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (7, '안유양', 'WS6GS', 2946069, '01099914337', '23/10/10', '우리은행', '535-811-077311');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (8, '한기안', 'SQ89WSG', 7060652, '01061777935', '23/12/04', '카카오뱅크', '035-811-137646');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (9, '송한서', 'KYPHRG', 5941915, '01008313040', '24/02/26', '농협은행', '777-079-758664');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (10, '황추함', 'IHFJX', 5207894, '01013190294', '23/10/21', '국민은행', '595-515-283138');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (11, '혁염모', 'A1HKQ', 4929489, '01069627706', '24/02/26', '신한은행', '770-445-484261');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (12, '허곤김', 'DNEGGKTH', 6009455, '01067174095', '24/02/19', '우리은행', '191-949-132611');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (13, '진백허', 'U2BW3XH8G', 3655645, '01065495971', '23/12/31', '카카오뱅크', '201-902-620319');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (14, '정오류', 'RJZLJVW', 2602427, '01053300968', '23/12/26', '농협은행', '407-466-192991');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (15, '유진이', 'V4CD9X7KED8', 6703772, '01042108459', '23/10/14', '국민은행', '897-414-342602');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (16, '천손모', 'FNIQ28', 3467834, '01006216679', '24/01/04', '신한은행', '603-156-227685');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (17, '희기현', 'RIMMRN', 5073270, '01071638703', '23/09/29', '우리은행', '401-424-823477');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (18, '홍손손', 'REFNTLEC', 7045698, '01023899158', '24/02/25', '카카오뱅크', '441-614-290746');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (19, '변소류', '5L0YGMJ', 6277402, '01042862906', '23/09/24', '농협은행', '089-137-475498');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (20, '연권배', 'R7V14PP5YD', 6574849, '01051320237', '23/12/27', '국민은행', '502-720-143073');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (21, '배국신', 'Q35A5I056S', 3605940, '01034910806', '23/11/04', '신한은행', '724-229-433387');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (22, '방추함', 'DAJ0XEF5', 2600735, '01095572051', '23/12/18', '우리은행', '082-718-872707');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (23, '백박희', 'WHA1', 2929950, '01083914187', '23/08/21', '카카오뱅크', '239-531-823194');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (24, '박이홍', 'JFM0FC', 5480245, '01088735526', '23/09/09', '농협은행', '260-240-532838');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (25, '백유한', 'L2E5XV0', 6976576, '01026966009', '24/01/04', '국민은행', '831-860-734776');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (26, '유윤나', '7FRQ6ORZ6I0V', 4592923, '01089632753', '23/08/02', '신한은행', '831-833-327770');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (27, '천한도', 'LNLE0', 1547929, '01091709985', '24/02/08', '우리은행', '411-363-840052');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (28, '맹진추', 'WGKACRCJ5', 2665575, '01083929241', '23/11/27', '카카오뱅크', '099-866-025225');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (29, '모배혁', 'VY7WKZX', 3458818, '01044522495', '23/10/12', '농협은행', '899-141-122848');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (30, '소손강', 'HJTQTGIN5HH', 1808188, '01033711630', '23/12/30', '국민은행', '659-490-092410');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (31, '모백양', 'D70E2R', 7255258, '01055433962', '23/11/24', '신한은행', '423-181-225791');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (32, '곤엄윤', 'W625YTOKDLS', 1629847, '01038630494', '23/12/18', '우리은행', '729-445-458491');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (33, '현염장', 'IGA31', 4201013, '01086791810', '24/02/20', '카카오뱅크', '039-011-638440');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (34, '진윤백', 'ROYA4TA', 2140201, '01079406637', '23/10/17', '농협은행', '274-272-824494');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (35, '탁모전', '7SYDA7', 3225060, '01088641103', '23/12/12', '국민은행', '575-352-049120');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (36, '모제유', 'LL8HW', 6169950, '01043689814', '23/12/07', '신한은행', '363-355-066042');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (37, '노희강', 'I9JN4GZKOA', 7944522, '01059174541', '23/08/13', '우리은행', '261-128-845964');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (38, '한박제', 'AYZLVWK', 3450626, '01037326245', '23/12/29', '카카오뱅크', '580-973-182171');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (39, '손홍추', 'N67SGI66', 7127666, '01081093204', '23/12/24', '농협은행', '521-053-745447');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (40, '맹노양', '0ANDXRRE', 1646321, '01014480996', '23/11/09', '국민은행', '664-535-313671');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (41, '현신강', 'YONWLXLZV', 2787496, '01000922154', '23/10/06', '신한은행', '271-427-405949');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (42, '오백혜', '4E1ZARBOOD3B', 5028300, '01013397636', '23/12/22', '우리은행', '319-133-233798');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (43, '조안도', 'UOZW0I2KTHR', 6766692, '01089637972', '24/01/15', '카카오뱅크', '537-020-966862');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (44, '신유노', '2YY281VVSNH', 6697433, '01017844363', '24/02/12', '농협은행', '950-806-371816');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (45, '송김황', 'VZP2Z6S1316', 3728970, '01069492040', '23/11/02', '국민은행', '735-968-153719');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (46, '이곤서', 'RW7RX', 7867958, '01030173777', '24/02/22', '신한은행', '166-448-032773');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (47, '임박탁', 'V2FC3V1', 7327596, '01097872307', '23/09/24', '우리은행', '263-015-879227');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (48, '공엄노', 'HZD0CHZ26J0', 5182644, '01044677855', '23/11/04', '카카오뱅크', '364-828-126573');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (49, '문장문', 'BE2DFNO7HE', 4704839, '01098206227', '23/12/01', '농협은행', '596-818-071221');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (50, '진천이', 'K9CYNLFLMFT', 5909530, '01048052692', '23/12/22', '국민은행', '429-835-469811');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (51, '장배허', '6U1DICO1', 5426540, '01048529184', '23/12/11', '신한은행', '811-775-908651');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (52, '전양추', 'N7GW1', 4184313, '01029000112', '24/02/05', '우리은행', '605-088-837657');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (53, '추양서', 'KHDJ91', 1400876, '01041587602', '24/01/09', '카카오뱅크', '417-321-055554');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (54, '연조임', 'DN6FSH', 2085327, '01096642866', '23/10/04', '농협은행', '550-554-287519');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (55, '임허혜', 'SBR0L12O', 1084027, '01078426903', '24/02/28', '국민은행', '605-462-449234');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (56, '나노국', 'KU1JOYJLZE', 5048543, '01024235102', '23/08/29', '신한은행', '969-734-222598');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (57, '희연조', 'I55ZUB', 4879317, '01089926690', '23/09/17', '우리은행', '686-470-984044');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (58, '곤탁손', 'XNN9T6987F', 2686810, '01016808108', '23/09/13', '카카오뱅크', '480-169-589512');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (59, '조염홍', '5JQSXK73BNS', 4878018, '01038182129', '24/02/13', '농협은행', '293-073-860502');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (60, '소혜천', 'GOGX0FH6LO', 5034609, '01092874454', '24/01/12', '국민은행', '186-703-822164');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (61, '조천지', '56VG', 5952149, '01022846761', '23/12/02', '신한은행', '549-820-978594');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (62, '최유제', 'JZ2CC', 5032280, '01088062683', '23/09/12', '우리은행', '725-557-218388');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (63, '기맹장', '7YRPTV', 1894128, '01072416147', '23/12/02', '카카오뱅크', '443-208-810094');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (64, '모조추', '1QMQSBI', 4509933, '01055761856', '23/08/09', '농협은행', '189-816-523173');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (65, '양함전', 'YHD4F', 1377612, '01050759649', '23/11/06', '국민은행', '878-673-816651');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (66, '모송전', 'YSVJ13PQA', 6271236, '01008627957', '24/02/18', '신한은행', '396-451-054465');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (67, '류오윤', '2FXN6SOI', 2472849, '01018246878', '23/09/12', '우리은행', '747-957-590141');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (68, '문배조', 'CEOHKYO8', 5124997, '01079657524', '23/09/22', '카카오뱅크', '513-283-616114');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (69, '추혜조', 'NYEIPAQ', 7798969, '01079507332', '23/10/28', '농협은행', '334-964-125592');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (70, '황기오', 'C686H9', 3022980, '01088793321', '23/11/01', '국민은행', '953-901-119273');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (71, '제염연', 'HILCSQ90Y', 4934491, '01076133633', '23/10/09', '신한은행', '958-764-325719');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (72, '백조모', 'AAIL4', 2798625, '01099841253', '24/01/05', '우리은행', '321-643-930894');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (73, '공맹소', '39V649KG6', 6796328, '01012979553', '23/12/13', '카카오뱅크', '934-235-003337');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (74, '제오혁', 'WL5O3755X7PF', 3971163, '01051521134', '23/09/20', '농협은행', '430-159-567478');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (75, '혁한나', 'IT9J0PB3Q', 6009595, '01052351300', '23/10/25', '국민은행', '407-891-635610');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (76, '소홍장', '56HII', 1270364, '01066932286', '23/11/10', '신한은행', '702-719-326634');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (77, '모나공', 'A4KDE', 3675679, '01096202483', '23/10/29', '우리은행', '877-905-333890');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (78, '염진지', 'B8CQ2', 5066380, '01028456921', '23/08/31', '카카오뱅크', '776-566-546004');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (79, '조국허', 'D1I3NZBD', 6897120, '01033789924', '23/09/22', '농협은행', '061-785-724075');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (80, '서기기', 'JIASUKTZ', 6844297, '01046685505', '23/09/14', '국민은행', '963-375-892168');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (81, '방홍신', 'HJ74IIO4OL4', 6617416, '01006179991', '23/09/28', '신한은행', '029-311-060523');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (82, '희신유', 'CNLD', 3774901, '01084642840', '23/09/23', '우리은행', '867-713-003119');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (83, '도송송', 'RWQ1B34', 5858802, '01054928506', '23/10/29', '카카오뱅크', '799-463-412522');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (84, '윤희장', 'O9LN8NLHAEZ', 4797178, '01017653737', '23/08/21', '농협은행', '964-411-847619');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (85, '박고제', 'H74AXDDZR4FM', 1066809, '01064243406', '23/09/03', '국민은행', '071-286-577107');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (86, '소천이', '9J3OQ', 2555429, '01037401516', '24/01/08', '신한은행', '037-273-690777');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (87, '희모오', '5OO6D5', 2307862, '01035839534', '23/10/15', '우리은행', '622-239-216816');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (88, '전염유', '412NY0O6SE', 5200385, '01049016272', '23/08/30', '카카오뱅크', '415-516-945431');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (89, '혁조유', 'IG0K', 7130744, '01065314856', '24/01/23', '농협은행', '878-273-182144');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (90, '기오오', 'WL65N2', 2701949, '01099314228', '23/09/10', '국민은행', '422-752-668593');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (91, '진혜희', 'JVUSQPB49G', 4763364, '01013643702', '23/08/04', '신한은행', '469-575-202091');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (92, '전노엄', 'J7N1BBNC22', 6387833, '01062065487', '23/12/18', '우리은행', '563-198-803038');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (93, '고연엄', 'WKA6CNP88X', 3153827, '01075529114', '23/09/19', '카카오뱅크', '629-041-687845');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (94, '양함류', 'BJ7RA2SVG', 5589389, '01042714880', '24/02/24', '농협은행', '087-033-814742');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (95, '오윤조', 'GXDIFT536OB', 5463504, '01033175023', '23/09/02', '국민은행', '590-276-592610');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (96, '신유최', 'S24OH7SMC', 6697250, '01038488229', '23/08/24', '신한은행', '838-559-128254');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (97, '조소염', 'P7HW2YMJMX', 1735895, '01049778569', '23/11/09', '우리은행', '233-815-637225');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (98, '나백전', '7VJ24DRJ9VK', 4466623, '01087122705', '23/08/17', '카카오뱅크', '538-326-387060');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (99, '유신염', 'J8C0ZO1', 2775624, '01066511791', '23/11/05', '농협은행', '143-714-212362');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (100, '함엄연', 'A4DZF2X', 4227744, '01035050249', '23/09/17', '국민은행', '503-849-998650');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (101, '오김조', 'EP4HMWLOBVOG', 2678341, '01043083878', '23/02/24', '신한은행', '452-876-584598');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (102, '국이안', 'JRR93PIJ1Y', 3240404, '01085051361', '23/12/27', '우리은행', '635-418-766944');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (103, '혜허허', '48PYWTEGW', 4253744, '01065164859', '23/09/07', '카카오뱅크', '949-594-632125');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (104, '희한희', 'Q1JL918JM2X', 3052119, '01047812837', '24/02/10', '농협은행', '360-431-200627');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (105, '곤혜양', 'Y0ZHE3N8GBT', 5184980, '01078829467', '23/08/01', '국민은행', '768-268-172441');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (106, '소탁공', 'F0NYZ', 5953782, '01067920999', '23/10/13', '신한은행', '458-526-788828');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (107, '탁제양', 'PJ3FNJC', 5192330, '01014300226', '24/01/25', '우리은행', '588-177-604534');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (108, '곤백안', 'MF4Z', 5782293, '01012529532', '23/09/09', '카카오뱅크', '413-162-798310');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (109, '도오이', 'ZI4TR5AZCV0', 1966966, '01013689409', '23/10/15', '농협은행', '913-020-383551');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (110, '도정양', 'MUDWH', 1234094, '01004489431', '23/11/02', '국민은행', '283-418-770395');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (111, '오공탁', '9QF59', 4258620, '01083132410', '23/09/08', '신한은행', '610-539-273172');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (112, '권정도', 'F02GJH25X0', 2705341, '01018033084', '23/10/06', '우리은행', '082-767-236060');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (113, '유혁서', 'DEGL7HC', 5364758, '01031382791', '23/10/24', '카카오뱅크', '976-579-342589');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (114, '권송소', 'DHQK8NJI0UV', 6266210, '01003288784', '23/10/26', '농협은행', '086-258-589569');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (115, '제류혁', 'ZOYQCKU', 2416619, '01015027083', '23/12/31', '국민은행', '783-517-633885');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (116, '장손황', 'H09WOQOF1', 7497020, '01080481225', '23/10/08', '신한은행', '918-518-015665');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (117, '최장도', 'SFXSVH5WAG', 2652794, '01072945140', '23/12/08', '우리은행', '304-858-989077');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (118, '신안진', '7O2V3', 1394568, '01018028237', '23/12/31', '카카오뱅크', '221-629-021845');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (119, '곤문권', 'FLUM2QPO', 7073049, '01049288083', '23/08/30', '농협은행', '140-101-526143');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (120, '최조양', 'BY39G', 7700346, '01026550971', '24/01/31', '국민은행', '395-127-093622');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (121, '국임혁', '459UKQBR6WO', 1249737, '01052833232', '23/10/16', '신한은행', '361-177-895446');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (122, '허염권', 'G70NPB', 6485915, '01046228449', '24/01/05', '우리은행', '556-852-297603');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (123, '박김변', 'U662', 2214173, '01081368710', '23/11/23', '카카오뱅크', '892-418-891244');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (124, '양손탁', 'R37PA0RNLU', 6471899, '01094900044', '23/12/07', '농협은행', '951-358-485018');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (125, '한허공', 'YXZS', 7129444, '01091261243', '23/10/12', '국민은행', '506-259-904704');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (126, '양김방', 'KOICXMAQ36Y', 6441655, '01034898292', '23/10/08', '신한은행', '343-979-241060');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (127, '유황나', 'ZD5R', 7238797, '01024986392', '23/11/08', '우리은행', '034-850-228134');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (128, '신조류', '7K72D0', 2180149, '01085660854', '23/10/30', '카카오뱅크', '074-639-034650');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (129, '추엄탁', 'NVELBIX', 6942196, '01056062504', '23/10/13', '농협은행', '683-081-922406');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (130, '임이문', 'Y9OUAO', 5953757, '01013052444', '23/11/04', '국민은행', '103-583-907633');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (131, '강공엄', 'C683MM987RPJ', 1645237, '01051273686', '24/01/28', '신한은행', '341-617-310763');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (132, '현정최', 'YGL2', 7092143, '01090990038', '23/10/29', '우리은행', '506-131-804851');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (133, '추유손', 'YM4IWFL9Q', 2111573, '01006136413', '24/02/12', '카카오뱅크', '548-775-050598');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (134, '유지전', 'SAHQNH', 4574385, '01098153611', '23/09/25', '농협은행', '336-090-463448');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (135, '고조류', 'GAW6LAGVPMV', 5969664, '01034801902', '23/09/29', '국민은행', '691-734-452451');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (136, '모모혁', 'XPDA2XU766', 6745184, '01042110384', '23/09/19', '신한은행', '066-003-544991');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (137, '유염조', 'KR0MDRYUB43X', 5394879, '01085762736', '23/12/21', '우리은행', '764-891-776404');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (138, '노노제', 'PHWBOVZ1L', 6121620, '01033622862', '24/01/17', '카카오뱅크', '086-485-225542');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (139, '지엄홍', 'M44T0U0', 6769568, '01055791752', '24/01/17', '농협은행', '377-439-470740');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (140, '공혜황', 'SJM1GDSPB', 4591917, '01038510278', '23/11/26', '국민은행', '103-111-335118');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (141, '정혜진', 'BEJZIF', 3692870, '01033664558', '23/08/05', '신한은행', '607-100-635196');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (142, '이소오', '62A8V', 2469267, '01049523056', '23/08/18', '우리은행', '189-789-852557');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (143, '모진백', 'DOLCDYH15', 5825309, '01001992143', '23/08/13', '카카오뱅크', '162-220-328645');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (144, '조장전', 'T0E8YG8O', 4627804, '01082562543', '23/11/25', '농협은행', '570-422-499340');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (145, '천희추', 'BG042T2474', 6656037, '01046166659', '23/12/19', '국민은행', '876-155-063624');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (146, '지노현', '3SVHAPT49IA', 3221886, '01096627127', '23/08/19', '신한은행', '605-379-519287');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (147, '강황모', 'RU4I6B70', 3959359, '01013218204', '23/09/28', '우리은행', '418-915-535322');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (148, '유모조', '2495', 4533496, '01033381904', '23/10/04', '카카오뱅크', '973-838-205024');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (149, '양배박', 'KVKX2K9FZB', 4447557, '01049495105', '23/12/12', '농협은행', '783-718-231066');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (150, '추양최', 'DRKUJ9K7VDX', 2814384, '01023327640', '23/10/23', '국민은행', '347-431-536318');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (151, '류황홍', 'Z2QPYGW223R', 5879190, '01095092823', '23/10/07', '신한은행', '907-233-946994');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (152, '양기곤', '7ZJI', 5413626, '01072306021', '23/11/03', '우리은행', '401-287-454607');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (153, '최허현', 'MGOMAD0L', 6006109, '01085730790', '23/08/20', '카카오뱅크', '011-764-288723');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (154, '연조최', '39XYRB', 3033774, '01085667397', '23/10/01', '농협은행', '467-397-190602');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (155, '모백안', '5CHWH3AV', 4456234, '01058868692', '23/11/05', '국민은행', '735-727-379168');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (156, '정정임', '3AY83JHXJL4N', 3599706, '01078564524', '23/10/12', '신한은행', '454-915-174732');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (157, '탁지조', '97OP5DKVO', 6465455, '01019861248', '23/10/07', '우리은행', '226-713-083175');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (158, '최신조', 'YMM0OAK', 6291984, '01055838489', '23/11/12', '카카오뱅크', '164-057-649522');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (159, '제추양', 'K5TM', 7763156, '01009164607', '23/11/23', '농협은행', '490-672-385860');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (160, '박한유', 'MNTA805G', 7295507, '01046463314', '23/11/29', '국민은행', '523-270-458478');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (161, '박천김', '6Z6C8389', 2244390, '01019159160', '24/01/25', '신한은행', '663-687-984876');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (162, '안엄공', 'LTO21HRRLA', 6140386, '01059181161', '23/08/28', '우리은행', '066-895-920118');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (163, '유황국', 'RDT8O2', 4671894, '01079766372', '23/12/06', '카카오뱅크', '582-699-067746');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (164, '문현추', 'SUQHRDAXZ', 5845884, '01000071772', '23/10/23', '농협은행', '282-713-764100');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (165, '연기혜', '43GTX4SR', 4455481, '01015755666', '23/08/17', '국민은행', '956-439-410197');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (166, '공모한', '9RBK6XQYWL', 5221516, '01012312956', '23/11/16', '신한은행', '328-388-480763');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (167, '최양장', 'OK419Q', 3209213, '01082689267', '23/10/22', '우리은행', '460-856-973992');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (168, '홍서전', 'RD72H7ORHWR', 7982596, '01036625629', '23/09/04', '카카오뱅크', '536-700-007841');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (169, '제희소', 'IG9DANAVZG', 6503367, '01084859868', '23/10/07', '농협은행', '455-411-158982');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (170, '박희소', 'A1BEQKOW', 7456337, '01068803019', '24/01/01', '국민은행', '485-425-378835');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (171, '권유신', 'Y12HHW7', 6796077, '01027987010', '23/12/13', '신한은행', '828-168-908818');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (172, '기김한', '6V7HYBKH', 6715358, '01022821382', '23/12/12', '우리은행', '515-679-798129');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (173, '백희조', 'ZZR0DUA2Q', 4088417, '01007062246', '24/01/23', '카카오뱅크', '358-198-280167');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (174, '연엄홍', 'KGLEUPUUC', 5785283, '01038481264', '23/09/07', '농협은행', '560-816-352611');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (175, '백지추', 'JZH218', 3915699, '01007024684', '23/09/06', '국민은행', '893-967-405342');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (176, '서전천', '6Q7QR2O2JJ3', 6998619, '01091753836', '24/01/28', '신한은행', '928-997-414812');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (177, '배허조', 'LMCPNAFFZT', 2753060, '01086929218', '23/08/11', '우리은행', '006-367-480560');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (178, '안양강', 'NH3H', 6477274, '01079464726', '23/08/29', '카카오뱅크', '136-222-435182');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (179, '허양허', 'NKSAQ', 1061027, '01083242729', '24/01/03', '농협은행', '583-560-609759');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (180, '백추유', 'PQ9GZ15', 5678912, '01029242179', '24/01/25', '국민은행', '081-150-220967');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (181, '소송강', '9I5IR7', 7022712, '01073459390', '23/10/07', '신한은행', '366-456-425285');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (182, '추탁김', 'V92YASQLMLV', 1776499, '01096215320', '24/01/15', '우리은행', '512-526-686779');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (183, '모오혁', '9H0QE4Q9', 7152128, '01044038227', '24/01/07', '카카오뱅크', '555-404-496228');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (184, '손소박', '9SVDXHD3', 6072432, '01070515512', '23/12/12', '농협은행', '370-509-968212');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (185, '추장방', 'M9PIRNP', 6743092, '01006599943', '24/01/12', '국민은행', '629-514-016880');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (186, '고공맹', '47EKZ51', 3411214, '01060912627', '24/01/23', '신한은행', '353-337-147735');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (187, '모연고', '3G1Q9', 7615906, '01055776579', '24/01/05', '우리은행', '340-146-268613');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (188, '서맹제', 'FYYKF', 1929143, '01004798129', '23/12/23', '카카오뱅크', '997-329-106697');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (189, '엄황국', 'U1BNGJK3XM', 5733888, '01087197465', '23/09/25', '농협은행', '686-382-724585');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (190, '소염희', '5L93XII', 6850434, '01029518336', '24/01/30', '국민은행', '132-867-429718');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (191, '양장조', 'JGPR', 2702976, '01091544580', '24/01/06', '신한은행', '607-767-885534');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (192, '국천유', '3Q231VPTB', 7645250, '01018712567', '23/09/27', '우리은행', '369-524-235557');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (193, '함곤이', 'E68ZGXOD1O6F', 2331706, '01012064203', '23/08/04', '카카오뱅크', '110-294-105464');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (194, '문윤모', 'UME9L6W0', 5636159, '01060769034', '24/01/09', '농협은행', '705-116-607078');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (195, '오서이', 'RHW3Y6OK7A', 3454266, '01093775036', '23/08/25', '국민은행', '437-038-250051');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (196, '유국유', 'KO3YODY4KYS', 1046347, '01020348350', '23/12/16', '신한은행', '650-794-857662');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (197, '최고혁', 'H9VXJ', 6727412, '01007752371', '24/02/28', '우리은행', '838-718-482356');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (198, '홍함제', 'UVC170', 1161003, '01030289237', '23/10/19', '카카오뱅크', '301-737-913569');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (199, '송유노', '5GFVV', 4140138, '01000133967', '24/01/17', '농협은행', '114-720-361526');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (200, '안염임', 'VVG5GKFS5HP', 4260796, '01086415666', '24/01/02', '국민은행', '329-990-744115');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (201, '유지한', 'FNEH25', 1370755, '01051565371', '23/09/21', '신한은행', '294-761-682116');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (202, '최노방', '249OIHKX13', 5525932, '01084066934', '24/01/25', '우리은행', '673-432-692917');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (203, '한권정', 'CZNI6', 4956647, '01005994889', '23/09/08', '카카오뱅크', '709-442-063980');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (204, '송서장', 'FEDHQ7FSMW', 5706391, '01008496889', '23/10/18', '농협은행', '796-989-339513');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (205, '국고제', '8KXFLHZNJ', 2896371, '01043137926', '23/10/04', '국민은행', '193-306-008043');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (206, '모이전', 'FWKC4G', 4926731, '01025797956', '24/01/03', '신한은행', '518-302-747708');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (207, '장조진', '7GN3N', 2968873, '01085793225', '23/12/10', '우리은행', '991-635-947372');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (208, '희천연', 'JCFWMOVSJ', 3003470, '01052871019', '23/09/29', '카카오뱅크', '303-685-003299');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (209, '백손조', '6RO0NG', 3569786, '01068643254', '24/02/03', '농협은행', '662-939-148364');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (210, '서진연', 'VZ16HK7', 7785159, '01020947098', '24/02/12', '국민은행', '192-495-296654');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (211, '소장나', 'EIT6WTGJSU', 3415458, '01024108154', '23/10/13', '신한은행', '096-504-429972');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (212, '조국공', 'X40RIKX1O', 6983888, '01015350203', '23/10/22', '우리은행', '879-579-420571');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (213, '고문추', 'NDFCB42I4T', 4290398, '01060284985', '23/11/25', '카카오뱅크', '522-592-793523');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (214, '양모유', 'QMYQAU9', 6428651, '01099557978', '24/01/13', '농협은행', '871-319-417981');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (215, '황엄함', 'ZG1AIE', 5990936, '01083257392', '23/09/30', '국민은행', '353-099-292995');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (216, '모허장', 'PRV2QTUT', 3261059, '01018340273', '24/02/06', '신한은행', '896-987-310380');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (217, '노조조', 'R072I9509H', 5225466, '01059552936', '23/11/20', '우리은행', '286-095-361705');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (218, '모임손', '629SQP', 7863301, '01045491305', '23/12/06', '카카오뱅크', '170-303-708168');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (219, '이진강', 'DT6Y41ZV', 1094547, '01050143148', '24/01/06', '농협은행', '021-362-982014');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (220, '윤연백', 'QWRMTJ', 5830111, '01082303372', '24/02/12', '국민은행', '731-087-028701');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (221, '탁탁박', 'LD9DHU37', 2244234, '01025896387', '23/11/26', '신한은행', '642-111-387377');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (222, '류문장', 'KKF5', 1544608, '01038702745', '23/12/05', '우리은행', '041-052-297621');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (223, '배고현', 'G7Z9F1FY', 7415823, '01068201760', '24/01/28', '카카오뱅크', '175-036-730042');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (224, '기탁혁', 'W8JE', 4656832, '01019826952', '24/01/18', '농협은행', '612-946-732967');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (225, '허희곤', '8MG11V', 2350995, '01070218038', '23/10/08', '국민은행', '775-233-984247');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (226, '지국조', '5796Y1ET', 4376139, '01029788397', '23/12/18', '신한은행', '608-690-314499');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (227, '배신장', '3AVINT', 2303509, '01011720780', '23/12/29', '우리은행', '098-765-505007');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (228, '유이함', '1NCDNV6HYMG', 6859128, '01005018741', '23/08/14', '카카오뱅크', '907-023-544722');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (229, '국곤안', 'G2G8TX28', 3266474, '01037527318', '23/09/18', '농협은행', '571-171-591615');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (230, '고한전', 'AENN5ZQ', 2359371, '01070863616', '23/09/17', '국민은행', '587-189-760993');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (231, '유오나', 'XA1HKC9', 1024147, '01059118407', '23/10/24', '신한은행', '234-289-819168');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (232, '한조양', 'K39C9P', 2511785, '01080627235', '23/08/30', '우리은행', '401-833-967524');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (233, '한추소', 'ZDH52EUUS8VX', 2653279, '01066130036', '24/02/10', '카카오뱅크', '538-007-836392');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (234, '안이방', '0H03882U', 7190710, '01067788972', '24/01/26', '농협은행', '055-578-066313');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (235, '유변도', 'HU3SVYYF', 1802713, '01000560015', '23/12/05', '국민은행', '514-388-025968');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (236, '엄황황', 'ENTIY', 3779736, '01082009517', '24/01/13', '신한은행', '066-761-445042');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (237, '허기이', '9BIWR1O4', 1254754, '01028613993', '24/02/14', '우리은행', '811-286-353582');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (238, '오손양', 'V48FP', 7647654, '01053405716', '24/01/03', '카카오뱅크', '064-837-993478');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (239, '배노진', '2DLUQOC2RMW', 2089456, '01065937312', '23/12/01', '농협은행', '020-448-634898');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (240, '현송손', 'EKVF', 7043313, '01021519077', '23/11/21', '국민은행', '522-788-728079');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (241, '혁안윤', '7OWGFF', 5638245, '01073356724', '23/12/11', '신한은행', '671-229-444320');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (242, '고백오', '5Z4J6DL', 1647519, '01088038138', '24/02/16', '우리은행', '106-969-715362');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (243, '맹연김', 'A7UPEVAAIP', 2272151, '01060111759', '23/08/27', '카카오뱅크', '947-950-216521');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (244, '신유노', '6D7VPO0QD1O', 6223711, '01088378789', '23/10/23', '농협은행', '319-425-394208');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (245, '전혜양', 'UELXRO3ZMD', 5503528, '01064993625', '23/10/05', '국민은행', '206-467-738550');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (246, '양모기', '18VW8BVH', 6280947, '01080417747', '23/10/27', '신한은행', '154-923-151729');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (247, '혁배현', 'AJLL5H5TZPS4', 3291728, '01046009910', '23/11/22', '우리은행', '857-307-289820');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (248, '황서조', 'M3OZ25D7G', 6926519, '01099194003', '23/09/01', '카카오뱅크', '120-500-216903');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (249, '손도송', 'SMPDEUW', 6307219, '01072905145', '23/12/06', '농협은행', '593-008-237778');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account)
VALUES (250, '유천서', 'KCSS', 1004696, '01048288797', '23/10/18', '국민은행', '212-518-579178');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (251, '황공양', 'HK03X0', 4811147, '01042794571', '23/10/21', '신한은행', '501-828-807389');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (252, '제나탁', '8FAC1W', 2759536, '01042936429', '24/01/08', '우리은행', '022-900-066422');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (253, '도나나', '651P7W9', 1010229, '01030444341', '23/12/05', '카카오뱅크', '827-230-273133');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (254, '유오신', '1DA8AYHP1Y', 5617214, '01092021041', '23/11/18', '농협은행', '383-110-876636');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (255, '송양오', 'VGSHYT0', 5383221, '01086061678', '24/01/02', '국민은행', '335-450-631496');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (256, '국황장', 'SNPEE', 2647343, '01007971920', '23/08/06', '신한은행', '437-889-243047');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (257, '양유강', 'K62N0RLTJ2AH', 2606596, '01046685795', '24/01/06', '우리은행', '940-318-809689');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (258, '배정고', 'M86T', 7120195, '01021549161', '23/12/20', '카카오뱅크', '814-128-699043');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (259, '천최유', '1PT2EJL8D9', 7129632, '01082908791', '23/12/26', '농협은행', '390-891-220517');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (260, '양황손', 'CIUC87UP', 2990614, '01020435364', '23/08/09', '국민은행', '737-556-354929');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (261, '임국손', 'WYXNCOF3Z', 4329850, '01095878126', '24/02/02', '신한은행', '108-187-933273');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (262, '제장변', '2TIITLBI4RZ', 1627004, '01044203859', '23/10/05', '우리은행', '867-867-339893');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (263, '황방현', 'HZPGCO', 2811086, '01088343118', '23/08/17', '카카오뱅크', '315-113-827927');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (264, '천서황', '6YTTM9', 4174205, '01009140188', '23/09/07', '농협은행', '998-399-080923');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (265, '한함양', '72LR8NE', 6410356, '01031103776', '23/09/02', '국민은행', '519-748-941297');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (266, '양유신', 'D6UPJLE370L', 1945830, '01031158861', '24/01/18', '신한은행', '708-353-802302');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (267, '노윤희', 'CBGBFADZI12', 6036464, '01076586334', '24/01/16', '우리은행', '646-254-012957');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (268, '송윤탁', 'LPIIW', 6783022, '01067298965', '24/02/21', '카카오뱅크', '020-094-774822');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (269, '양윤안', '8OXGV', 4122019, '01012211166', '24/02/15', '농협은행', '262-515-434709');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (270, '천홍공', 'O6AB9', 7060960, '01089339488', '23/11/21', '국민은행', '829-921-947294');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (271, '백유백', 'QMALVL0I', 6742873, '01010064427', '23/12/24', '신한은행', '364-304-369652');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (272, '손방박', 'XE62XBOSB', 5897120, '01027990416', '23/10/31', '우리은행', '942-547-948435');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (273, '손백엄', 'ABTOMQ', 2452422, '01023363574', '24/01/07', '카카오뱅크', '753-336-675027');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (274, '노이모', 'VGPQUN1CTJT', 7382476, '01061225747', '23/08/04', '농협은행', '221-128-303440');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (275, '유박장', 'NGWADN', 7903473, '01027917256', '24/02/15', '국민은행', '827-321-878771');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (276, '현임조', 'X9KKVK241', 4166290, '01044713237', '23/12/31', '신한은행', '752-849-626301');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (277, '변최모', 'Y0YCTRB8JD', 2343600, '01087997215', '24/01/12', '우리은행', '790-923-817010');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (278, '맹홍양', '8XBBAS5T', 1681947, '01073865635', '24/02/18', '카카오뱅크', '364-639-299315');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (279, '맹지희', 'NV35WLV2UTL', 5644657, '01096748099', '24/01/09', '농협은행', '813-697-775930');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (280, '권유박', '1EOLI', 1027049, '01068890940', '23/12/02', '국민은행', '630-674-807061');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (281, '강배혁', '0ZJ9', 6565665, '01098080326', '23/09/12', '신한은행', '045-819-818478');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (282, '방기홍', '1N68ZNKNGP', 2133319, '01019194460', '23/10/09', '우리은행', '442-978-793392');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (283, '천곤오', '0HA8DQLM1Q', 7740967, '01015251644', '23/09/30', '카카오뱅크', '527-089-616836');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (284, '탁유서', 'P4XOM', 1545478, '01024784084', '23/11/26', '농협은행', '696-676-919324');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (285, '유천홍', 'ZS4MGZ2E', 4019105, '01011739667', '24/02/17', '국민은행', '879-852-745905');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (286, '함유맹', 'ZRIYP', 4301530, '01040485050', '23/09/08', '신한은행', '789-024-954315');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (287, '공천홍', '2Z2C9', 7021310, '01065927109', '24/02/23', '우리은행', '928-617-314514');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (288, '맹염홍', '3GX634U1', 7824257, '01076961774', '23/10/26', '카카오뱅크', '646-293-164291');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (289, '오공김', '340E86Y0HUM', 6579785, '01040497302', '23/12/06', '농협은행', '337-670-750834');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (290, '조안권', 'K41D', 3742677, '01021367695', '24/01/03', '국민은행', '552-741-381746');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (291, '유모정', 'SNU25HWUEC', 3689168, '01047023155', '24/02/14', '신한은행', '927-799-948745');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (292, '희국양', 'DC3HHZ98P', 7322357, '01039298382', '23/10/24', '우리은행', '347-670-143865');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (293, '현임류', '518AK', 2277433, '01068765216', '23/10/09', '카카오뱅크', '312-297-173513');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (294, '장조탁', 'I32W', 1049919, '01017115744', '24/02/18', '농협은행', '943-688-054373');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (295, '양도유', '538A97D', 5932195, '01021526391', '23/11/08', '국민은행', '631-278-449238');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (296, '박유도', 'XSLSRBCO2', 5467990, '01042501686', '23/09/20', '신한은행', '702-529-038402');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (297, '유임엄', 'KZLRFIFJXW5', 2621469, '01035274487', '23/08/03', '우리은행', '316-485-680307');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (298, '나김문', 'W66UKGDSQW3', 3476151, '01083450393', '24/02/14', '카카오뱅크', '163-144-920318');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (299, '장이함', '99A2NJV43L', 4184192, '01085218348', '24/02/04', '농협은행', '435-966-781051');
INSERT INTO tblTrainees (seq_trainee, name, id, ssn, tel, registrationDate, bank, account) 
VALUES (300, '최서안', 'BDW1796N3A', 6120173, '01025578451', '23/10/31', '국민은행', '611-568-608569');

--관리자 테이블 tblManager 완료
insert into tblManager values(1,'홍길동','hong','1111');
insert into tblManager values(2,'강민수','asdf1234','0291');
insert into tblManager values(3,'이채린','linear99','xcjsdf1');
insert into tblManager values(4,'손영익','son77','askzn1');
insert into tblManager values(5,'정우주','space0198','1dsgf1');
insert into tblManager values(6,'이혜정','hyehye328','05i6tu');
insert into tblManager values(7,'김민정','junga','1vklss0');
insert into tblManager values(8,'이웅규','dnsdei37','1zxvkn1');
insert into tblManager values(9,'이하나','hanahana','fghn43');
insert into tblManager values(10,'조혜정','jo238pp','dffjnr');

--교사
insert into tblTeacher(seq_teacher, name, id, ssn, tel) values(1,'김민곤','momo1236','1685587','01073998257');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (2, '김희연', 'khy1212', '2554877', '01048789865');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (3, '정혜정', 'jhj2311', '2487662', '01058446522');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (4, '정원혁', 'jwh1234', '1584470', '01065658725');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (5, '장원준', 'jwj77', '1423879', '01024651213');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (6, '홍길동', 'kildong9', '1687725', '01077458865');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (7, '아무개', 'amg1234', '1544689', '01023231212');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (8, '박대기', 'parkwait7', '1633587', '01084776523');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (9, '김민수', 'minsuk123', '1557120', '01012314456');
INSERT INTO tblTeacher(seq_teacher, name, id, ssn, tel) VALUES (10, '김민지', 'prettymg7', '2658798', '01044028836');

--출결 상태
insert into tblAttendanceStatus values (1, '정상');
insert into tblAttendanceStatus values (2, '지각');
insert into tblAttendanceStatus values (3, '조퇴');
insert into tblAttendanceStatus values (4, '외출');
insert into tblAttendanceStatus values (5, '병가');
insert into tblAttendanceStatus values (6, '기타');

-- 기자재 
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (1, '사물함', to_date('2016-01-17', 'yyyy-mm-dd'), null,176,0);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (2, '모니터', to_date('2024-01-25', 'yyyy-mm-dd'), to_date('2027-01-25', 'yyyy-mm-dd'),140,2);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (3, '본체', to_date('2024-02-14', 'yyyy-mm-dd'), to_date('2027-02-14', 'yyyy-mm-dd'),140,3);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (4, '키보드', to_date('2024-02-14', 'yyyy-mm-dd'), to_date('2027-02-14', 'yyyy-mm-dd'),140,4);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (5, '마우스', to_date('2024-02-14', 'yyyy-mm-dd'), to_date('2027-02-14', 'yyyy-mm-dd'),140,3);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (6, '책상', to_date('2015-08-21', 'yyyy-mm-dd'), null,145,5);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (7, '의자', to_date('2012-03-13', 'yyyy-mm-dd'), null,145,5);
insert into tblEquipment (seq_equipment, name, importDate, expectedExportDate, amount, brokenAmount) values (8, '빔 프로젝터', to_date('2019-09-10', 'yyyy-mm-dd'), to_date('2024-03-10', 'yyyy-mm-dd'),6,1);

--과정 기간
insert into tblcoursePeriod values (1, 165);
insert into tblcoursePeriod values (2, 180);
insert into tblcoursePeriod values (3, 210);

--교재
insert into tblTextbook values(1,'자바의 정석','도우출판');
insert into tblTextbook values(2,'이것이 자바다','한빛미디어');
insert into tblTextbook values(3,'혼자서 공부하는 파이썬','한빛미디어');
insert into tblTextbook values(4,'프론트엔드 기초부터 완성까지 ','비제이퍼블릭');
insert into tblTextbook values(5,'핵심만 골라 배우는 SwiftUI 기반의 iOS 프로그래밍 ','제이펍');
insert into tblTextbook values(6,'Kotlin in Action','에이콘');
insert into tblTextbook values(7,'생활코딩 React','위키북스');
insert into tblTextbook values(8,'바로 쓰는 오라클 클라우드','에이콘');
insert into tblTextbook values(9,'스프링 5 레시피','한빛미디어');
insert into tblTextbook values(10,'예제로 배우는 스프링 부트 입문','비제이퍼블릭');
insert into tblTextbook values(11,'예제로 배우는 Django 4 ','영진');
insert into tblTextbook values(12,'뇌를 자극하는 JSP','한빛미디어');
insert into tblTextbook values(13,'Flask 기반의 파이썬 웹 프로그래밍','제이펍');
insert into tblTextbook values(14,'기초부터 다지는 ElasticSearch 운영 노하우','프로그래밍 인사이트');
insert into tblTextbook values(15,'코드 없는 알고리즘과 데이터 구조','동양북스');
insert into tblTextbook values(16,'컴퓨터 편집 이론과 실제','창과현');
insert into tblTextbook values(17,'그림으로 이해하는 AWS 구조와 기술 ','길벗');
insert into tblTextbook values(18,'완벽한 IT 인프라 구축을 위한 Docker','정보문화사');
insert into tblTextbook values(19,'완벽한 IT 인프라 구축의 자동화를 위한 Kubernetes 쿠버네티스','정보문화사');

--과목 tblSubject  완료
insert into tblSubject values (1,'자바',30);
insert into tblSubject values (2,'오라클',30);
insert into tblSubject values (3,'프론트',30);
insert into tblSubject values (4,'JSP',30);
insert into tblSubject values (5,'Spring',30);
insert into tblSubject values (6,'Python',30);
insert into tblSubject values (7,'Django',30);
insert into tblSubject values (8,'Flask',30);
insert into tblSubject values (9,'Swift',30);
insert into tblSubject values (10,'Kotlin',30);
insert into tblSubject values (11,'React',30);
insert into tblSubject values (12,'ElasticSearch',15);
insert into tblSubject values (13,'데이터 구조 알고리즘',15);
insert into tblSubject values (14,'컴퓨터 이론',15);
insert into tblSubject values (15, 'AWS', 15);
insert into tblSubject values (16, 'Docker', 15);
insert into tblSubject values (17, 'Kubernetes', 15);

-- 문제  tblQuestion  필기(1~10 java 문제 , 11 ~ 20 Oracle 문제 , 21 ~ 30 HTML+CSS+JS 문제 , 31 ~ 40 JSP 문제 , 41~50 Spring 문제 , 51~60 Python 문제 , 61 ~ 70 Flask 문제 , 71 ~ 80 Django 문제
-- 필기 (81 ~ 90 Swift 문제 , 91~100 Kotlin 문제 , 101 ~ 110 React 문제 , 111 ~ 120 ElasticSearch 문제 , 121 ~ 130 데이터 구조 알고리즘 문제 , 131 ~ 140 컴퓨터이론 문제)
-- 실기 (순서 같음 ) 141 ~ 
insert into tblQuestion
values(
1,'자바 소스 확장자는?','3');

insert into tblQuestion
values(
2,'컴파일된 파일의 확장자는?','4');

insert into tblQuestion
values(
3,'자바 언어를 개발한 사람은?','3');

insert into tblQuestion
values(
4,'자바를 개발한 목적으로 올바른 것은?','2');

insert into tblQuestion
values(
5,'자바 개발을 하고자 할 때 필요한 프로그램은?','1');

insert into tblQuestion
values(
6,'WORA는 어떤 뜻을 가지는가?','5');

insert into tblQuestion
values(
7,'자바의 특징을 잘못 설명한 것은?','4');

insert into tblQuestion
values(
8,'다음 중 자바에서 날짜를 불러오는 방법으로 올바른 것은?','3');

insert into tblQuestion
values(
9,'자바에서 sort 를 통해 정렬 시 사용되는 정렬 알고리즘은?','2');

insert into tblQuestion
values(
10,'자바가 파이썬에 비해 코드 길이가 긴 이유는 ? ','1');

-- 오라클 문제 
insert into tblQuestion
values(
11,'오라클db에서 varchar2의 의미로 올바른것은?','5');

insert into tblQuestion
values(
12,'오라클에서 join을 사용할 때 필요한 키는?','5');

insert into tblQuestion
values(
13,'오라클과 MongoDB의 차이를 올바르게 설명하는 것은?','3');

insert into tblQuestion
values(
14,'오라클은 NoSQL이 아니다 그렇다면 오라클만의 특성으로 올바른 것은?','4');

insert into tblQuestion
values(
15,'오라클 뷰를 생성할 때 쓰는 코드로 올바른 것은?','1');

insert into tblQuestion
values(
16,'오라클에서 조회를 할 때 사용하는 코드로 올바른 것은?','2');

insert into tblQuestion
values(
17,'튜플의 의미로 올바른 것은?','2');

insert into tblQuestion
values(
18,'오라클에서 그룹에 대한 조건을 걸 때 쓰는 코드는?','1');

insert into tblQuestion
values(
19,'오라클db를 만든 사람의 이름으로 올바른 것은?','1');

insert into tblQuestion
values(
20,'오라클은 SQL 즉 관계형이다 관계형이 가지는 특징은?','4');

insert into tblQuestion
values(
21,'HTML을 만든 사람으로 맞는것은?','4');

insert into tblQuestion
values(
22,'CSS를 만든 사람으로 올바른것은?','3');

insert into tblQuestion
values(
23,'JS를 만든 사람으로 올바른것은?','4');

insert into tblQuestion
values(
24,'JS와 동일하게 스크립트를 사용하는 언어를 고르시오','5');

insert into tblQuestion
values(
25,'검색엔진이 좋아하는 태그가 아닌것은?','1');

insert into tblQuestion
values(
26,'HTML5에서 문서 구조화와 관련이 먼 태그?','2');

insert into tblQuestion
values(
27,'버튼을 만드는 방법으로 틀린것은?','2');

insert into tblQuestion
values(
28,'HTTP 세션 설명으로 올바른것은?','3');

insert into tblQuestion
values(
29,'브라우저에 의해 저장되는 로컬 저장소가 아닌것은?','1');

insert into tblQuestion
values(
30,'쿠키가 저장되는 곳으로 올바른 것은?','5');

--JSP문제
insert into tblQuestion
values(
31,'JSP실행순서로 올바른 순서는?','4');

insert into tblQuestion
values(
32,'JSP가 이용하는 프로그래밍 문법은?','3');

insert into tblQuestion
values(
33,'JSP 지시자 역할로 올바른것은?','2');

insert into tblQuestion
values(
34,'JSP가 받을 수 있는 코드가 아닌것은?','1');

insert into tblQuestion
values(
35,'JSP의 표현식으로 올바른 것은?','2');

insert into tblQuestion
values(
36,'JSP 페이지 구성요소에 존재하지 않는 것은?','5');

insert into tblQuestion
values(
37,'쿠키에 대한 설명으로 옳은것은?','5');

insert into tblQuestion
values(
38,'HTTP 특징으로 올바른 것은?','4');

insert into tblQuestion
values(
39,'세션 동작 방식으로 올바른 것은?','3');

insert into tblQuestion
values(
40,'세션의 특징으로 올바른 것은?','2');

--Spring 문제
insert into tblQuestion
values(
41,'스프링 프레임워크가 가지는 구조로 올바른 것은?','1');

insert into tblQuestion
values(
42,'MVC 구조로 틀린 것은?','5');

insert into tblQuestion
values(
43,'DAO 설명으로 올바른 것은?','4');

insert into tblQuestion
values(
44,'DTO 설명으로 올바른 것은?','1');

insert into tblQuestion
values(
45,'IOC 설명으로 올바른 것은?','2');

insert into tblQuestion
values(
46,'DI의미로 올바른 것은?','2');

insert into tblQuestion
values(
47,'Spring의 장점으로 올바른 것은?','3');

insert into tblQuestion
values(
48,'JVM 의미로 올바른 것은?','4');

insert into tblQuestion
values(
49,'ORM가 하는 기능이 아닌것은?','1');

insert into tblQuestion
values(
50,'JPA로 올바른 것은?','1');

insert into tblQuestion
values(
51,'Python이 가지는 특징으로 올바른 것은?','2');

insert into tblQuestion
values(
52,'Python을 만든 사람은?','2');

insert into tblQuestion
values(
53,'Python의 장점으로 올바른 것은?','2');

insert into tblQuestion
values(
54,'Python의 단점으로 올바른 것은?','1');

insert into tblQuestion
values(
55,'Python의 라이브러리로 올바른 것은?','1');

insert into tblQuestion
values(
56,'Python을 통해 할 수 없는 작업은?','5');

insert into tblQuestion
values(
57,'Python 언어가 자바에 비해 짧은 이유는?','2');

insert into tblQuestion
values(
58,'Python 패키지 관리 프로그램은?','4');

insert into tblQuestion
values(
59,'Python 문법으로 올바른 것은?','3');

insert into tblQuestion
values(
60,'Python이 최초 공개 된 시점은?','2');

insert into tblQuestion
values(
61,'Flask는 어떤 언어로 작성되었나요??','2');

insert into tblQuestion
values(
62,'Flask가 가벼운 웹 프레임워크라고 불리는 이유는 무엇인가요?','3');

insert into tblQuestion
values(
63,'Flask에서 라우팅을 설정하는 방법은 무엇인가요?','3');

insert into tblQuestion
values(
64,'Flask의 템플릿 엔진인 Jinja2의 역할은 무엇인가요?','2');

insert into tblQuestion
values(
65,'Flask에서 HTTP 요청을 처리하는 함수를 무엇이라고 하나요?','1');

insert into tblQuestion
values(
66,'Flask에서 세션 관리를 위해 사용하는 라이브러리는 무엇인가요?','1');

insert into tblQuestion
values(
67,'Flask에서 블루프린트(BluePrint)의 개념과 그 역할에 대해 설명해주세요.','5');

insert into tblQuestion
values(
68,'Flask에서 RESTful API를 구현하기 위해서 사용하는 확장 패키지는 무엇인가요?','5');

insert into tblQuestion
values(
69,'Flask에서 동적 URL 라우팅을 구현하는 방법은 무엇인가요?','4');

insert into tblQuestion
values(
70,'Flask에서 웹 소켓을 사용하기 위해 필요한 확장 패키지는 무엇인가요?','3');

insert into tblQuestion
values(
71,'Django는 어떤 언어로 작성된 웹 프레임워크인가요?','2');

insert into tblQuestion
values(
72,'Django에서 DRY(Dont Repeat Yourself) 원칙이란 무엇인가요?','4');

insert into tblQuestion
values(
73,'Django의 ORM(Object-Relational Mapping) 시스템의 장점은 무엇인가요?','5');

insert into tblQuestion
values(
74,'Django에서 미들웨어(Middleware)의 역할은 무엇인가요?','3');

insert into tblQuestion
values(
75,'Django의 MTV(Model-Template-View) 아키텍처에 대해 설명이 올바른 것은?','1');

insert into tblQuestion
values(
76,'Django에서 CSRF(Cross Site Request Forgery) 공격을 방지하기 위해 사용하는 방법은 무엇인가요?','4');

insert into tblQuestion
values(
77,'Django에서 URL 라우팅을 설정하는 방법과 그 역할에 대해 설명해주세요.','2');

insert into tblQuestion
values(
78,'Django에서는 데이터베이스 스키마 마이그레이션을 어떻게 처리하나요?','2');

insert into tblQuestion
values(
79,'Django에서의 세션 관리 방법에 대해 설명해주세요.','1');

insert into tblQuestion
values(
80,'Django에서 제네릭 뷰(Generic Views)의 역할과 장점에 대해 설명해주세요.','5');

insert into tblQuestion
values(
81,'Swift 언어의 주요 특징 중 하나인 옵셔널(Optional)에 대해 설명해주세요.','2');

insert into tblQuestion
values(
82,'Swift에서 상수를 선언하는 키워드는 무엇인가요?','3');

insert into tblQuestion
values(
83,'Swift의 클로저(Closure)는 무엇이며, 어떻게 사용하는지 설명해주세요.','4');

insert into tblQuestion
values(
84,'Swift에서는 클래스와 구조체의 차이점은 무엇인가요?','5');

insert into tblQuestion
values(
85,'Swift에서 ''프로토콜(Protocol)''이란 무엇이며, 어떻게 사용하는지 설명해주세요.','1');

insert into tblQuestion
values(
86,'Swift에서 ''익스텐션(Extension)''이란 무엇이며, 어떤 상황에서 사용하는지 설명해주세요.','1');

insert into tblQuestion
values(
87,'Swift의 ''가드(Guard) 문''과 ''if let''의 차이점은 무엇인가요?','2');

insert into tblQuestion
values(
88,'Swift에서 메모리 관리를 위해 ARC(Automatic Reference Counting)를 사용하는 이유는 무엇인가요?','3');

insert into tblQuestion
values(
89,'Swift에서 ''제네릭(Generic)''이란 무엇이며, 어떠한 장점이 있는지 설명해주세요.','4');

insert into tblQuestion
values(
90,'Swift에서 ''옵저버(Observer)'' 패턴을 구현하기 위해 사용하는 키워드는 무엇인가요?','5');

insert into tblQuestion
values(
91,'Kotlin이 Java와 비교했을 때 가지는 장점은 무엇인가요?','5');

insert into tblQuestion
values(
92,'Kotlin에서 널(null) 안전성을 보장하는 방법은 무엇인가요?','3');

insert into tblQuestion
values(
93,'Kotlin에서 자료형을 자동으로 유추하는 키워드는 무엇인가요?','2');

insert into tblQuestion
values(
94,'Kotlin의 확장 함수(Extension Function)에 대해 설명해주세요.','1');

insert into tblQuestion
values(
95,'Kotlin에서 ''코루틴(Coroutines)''이란 무엇이며, 어떤 장점이 있는지 설명해주세요.','4');

insert into tblQuestion
values(
96,'Kotlin에서 ''데이터 클래스(Data Class)''의 역할은 무엇인가요?','4');

insert into tblQuestion
values(
97,'Kotlin에서 ''컬렉션(Collection)''과 ''시퀀스(Sequence)''의 차이는 무엇인가요?','4');

insert into tblQuestion
values(
98,'Kotlin에서 ''인라인 함수(Inline Function)''의 역할과 장점은 무엇인가요?','3');

insert into tblQuestion
values(
99,'Kotlin에서 ''람다 표현식(Lambda Expression)''이란 무엇이며, 어떻게 사용하는지 설명해주세요.','2');

insert into tblQuestion
values(
100,'Kotlin에서 ''동반 객체(Companion Object)''의 역할은 무엇이며, 어떻게 사용하는지 설명해주세요.','1');


insert into tblQuestion
values(
101,'React는 무엇이며, 어떤 특징을 가지고 있는지 설명해주세요.','1');

insert into tblQuestion
values(
102,'React에서 ''컴포넌트(Component)''란 무엇인가요?','4');

insert into tblQuestion
values(
103,'React에서 ''상태(State)''와 ''속성(Props)''의 차이는 무엇인가요?','5');

insert into tblQuestion
values(
104,'React의 라이프사이클 메서드 중 ''componentDidMount''의 역할은 무엇인가요?','3');

insert into tblQuestion
values(
105,'React에서 ''훅(Hooks)''이란 무엇이며, 어떤 것들이 있는지 나열해주세요.','2');

insert into tblQuestion
values(
106,'React에서 ''가상 DOM(Virtual DOM)''의 개념과 장점에 대해 설명해주세요.','2');

insert into tblQuestion
values(
107,'React에서 ''리덕스(Redux)'' 사용의 장점은 무엇인가요?','1');

insert into tblQuestion
values(
108,'React에서 ''컨텍스트(Context)'' API의 역할과 사용 상황에 대해 설명해주세요.','1');

insert into tblQuestion
values(
109,'React에서 ''불변성(Immutability)''의 중요성은 무엇인가요?','1');

insert into tblQuestion
values(
110,'React에서 ''키(Key)'' 속성의 역할과 중요성에 대해 설명해주세요.','4');

insert into tblQuestion
values(
111,'ElasticSearch는 무엇이며, 어떤 특징을 가지고 있는지 설명해주세요.','5');

insert into tblQuestion
values(
112,'ElasticSearch에서 ''인덱스(Index)''란 무엇이며, 어떻게 사용하는지 설명해주세요.','5');

insert into tblQuestion
values(
113,'ElasticSearch에서 ''샤딩(Sharding)''과 ''복제(Replication)''의 개념과 역할에 대해 설명해주세요.','3');

insert into tblQuestion
values(
114,'ElasticSearch의 ''Inverted Index'' 기술에 대해 설명해주세요.','2');

insert into tblQuestion
values(
115,'ElasticSearch에서 ''Mapping''이란 무엇이며, 어떻게 사용하는지 설명해주세요.','1');

insert into tblQuestion
values(
116,'ElasticSearch에서 ''분석기(Analyzer)''의 역할은 무엇인가요?','1');

insert into tblQuestion
values(
117,'ElasticSearch에서 사용되는 ''Query DSL''에 대해 설명해주세요.','3');

insert into tblQuestion
values(
118,'ElasticSearch와 SQL의 차이점은 무엇인가요?','3');

insert into tblQuestion
values(
119,'ElasticSearch에서 ''클러스터(Cluster)''와 ''노드(Node)''의 개념에 대해 설명해주세요.','2');

insert into tblQuestion
values(
120,'ElasticSearch에서 ''Aggregation'' 기능의 역할과 사용법에 대해 설명해주세요.','1');

insert into tblQuestion
values(
121,'스택(Stack)과 큐(Queue)의 차이점은 무엇인가요?','1');

insert into tblQuestion
values(
122,'연결 리스트(Linked List)와 배열(Array)의 차이점은 무엇인가요?','3');

insert into tblQuestion
values(
123,'이진 탐색 트리(Binary Search Tree)의 특징과 장단점에 대해 설명해주세요.','3');

insert into tblQuestion
values(
124,'퀵 정렬(Quick Sort) 알고리즘의 기본 원리를 설명해주세요.','4');

insert into tblQuestion
values(
125,'해시 테이블(Hash Table)의 장점과 단점은 무엇인가요?','4');

insert into tblQuestion
values(
126,'그래프(Graph) 데이터 구조의 특징과 사용 사례를 설명해주세요.','5');

insert into tblQuestion
values(
127,'브레드퍼스트 탐색(Breadth-First Search)과 깊이우선탐색(Depth-First Search)의 차이점은 무엇인가요?','5');

insert into tblQuestion
values(
128,'다이나믹 프로그래밍(Dynamic Programming)이란 무엇인가요? 그리고 어떤 상황에서 사용하나요?','5');

insert into tblQuestion
values(
129,'힙(Heap) 데이터 구조의 특징과 사용 사례를 설명해주세요.','1');

insert into tblQuestion
values(
130,'빅 오 표기법(Big O notation)이란 무엇인가요? O(n), O(log n), O(n^2)의 의미를 설명해주세요.','2');

insert into tblQuestion
values(
131,'컴퓨터에서 ''운영체제(Operating System)''의 역할은 무엇인가요?','2');

insert into tblQuestion
values(
132,' ''프로세스(Process)''와 ''스레드(Thread)''의 차이점은 무엇인가요?','1');

insert into tblQuestion
values(
133,' ''CPU 스케줄링(CPU Scheduling)''이란 무엇이며, 어떤 알고리즘들이 있는지 설명해주세요.','1');

insert into tblQuestion
values(
134,' ''페이지 교체 알고리즘(Page Replacement Algorithm)''에 대해 설명하고, 대표적인 알고리즘을 두 가지 이상 나열해주세요.','5');

insert into tblQuestion
values(
135,' ''가상 메모리(Virtual Memory)''의 개념과 역할에 대해 설명해주세요.','5');

insert into tblQuestion
values(
136,' ''캐시 메모리(Cache Memory)''의 역할과 작동 원리에 대해 설명해주세요.','4');

insert into tblQuestion
values(
137,' ''데드락(Deadlock)''의 개념과 발생 조건, 해결 방법에 대해 설명해주세요.','4');

insert into tblQuestion
values(
138,' ''병렬 컴퓨팅(Parallel Computing)''과 ''분산 컴퓨팅(Distributed Computing)''의 차이점은 무엇인가요?','4');

insert into tblQuestion
values(
139,' 프로토콜(Protocol)이란 무엇이며, HTTP와 HTTPS의 차이점은 무엇인가요?','3');

insert into tblQuestion
values(
140,' 데이터베이스 정규화(Database Normalization) 올바른것?','1');

insert into tblQuestion
values(
141,'Java의 ''인터페이스(Interface)''의 역할은 무엇인가요?','클래스나 프로그램이 어떤 서비스를 제공하는지, 어떤 메서드를 호출할 수 있는지를 명시하는 계약 역할.');

insert into tblQuestion
values(
142,'Java에서 ''예외 처리(Exception Handling)''란 무엇이며, try-catch 문의 역할은 무엇인가요?','클래스나 프로그램이 어떤 서비스를 제공하는지, 어떤 메서드를 호출할 수 있는지를 명시하는 계약 역할.');

insert into tblQuestion
values(
143,'Java에서 ''예외 처리(Exception Handling)''란 무엇이며, try-catch 문의 역할은 무엇인가요?','프로그램 실행 중에 발생할 수 있는 예외 상황을 미리 예측하여 처리하는 것');

insert into tblQuestion
values(
144,'Java에서 ''제네릭(Generic)''이란 무엇인가요?',' 클래스 내부에서 사용할 데이터 타입을 외부에서 지정하는 기법.');

insert into tblQuestion
values(
145,'Java에서 ''쓰레드(Thread)''의 개념과 사용법에 대해 설명해주세요.','Runnable 인터페이스를 구현하여 생성.');

insert into tblQuestion
values(
146,'Java에서 ''자바 메모리 관리(Garbage Collection)''의 역할은 무엇인가요?','동적으로 할당된 메모리 영역 중 사용되지 않는 영역을 자동으로 회수하는 메모리 관리 기법.');

insert into tblQuestion
values(
147,'Java에서 ''캡슐화(Encapsulation)''의 개념과 장점에 대해 설명해주세요.','객체의 속성과 행동을 하나로 묶고, 실제 구현 내용을 감추는 것. 코드의 안전성을 높이는 데 도움.');

insert into tblQuestion
values(
148,' ''정적 메서드(Static Method)''와 ''정적 변수(Static Variable)''의 특징은 무엇인가요?','클래스에 속하며, 객체를 생성하지 않고 사용할 수 있는 메서드와 변수.');

insert into tblQuestion
values(
149,' ''생성자(Constructor)''의 역할은 무엇인가요?','클래스의 인스턴스를 생성하고 초기화하는 역할.');

insert into tblQuestion
values(
150,'Java에서 ''오버로딩(Overloading)''과 ''오버라이딩(Overriding)''의 차이점은 무엇인가요?','오버로딩은 같은 이름의 메서드를 여러 개 정의하되, 매개변수의 타입이나 개수를 다르게 하는 것.');

insert into tblQuestion
values(
151,'Oracle 데이터베이스에서 PL/SQL이란 무엇인가요?','Oracle 데이터베이스에서 사용하는 프로시저 언어');

insert into tblQuestion
values(
152,'Oracle에서 ''커밋(Commit)''의 역할은 무엇인가요?',' 데이터베이스에 트랜잭션의 변경 사항을 영구적으로 반영하는 작업.');

insert into tblQuestion
values(
153,'Oracle에서 ''롤백(Rollback)''의 역할은 무엇인가요?','트랜잭션의 작업을 취소하고 데이터베이스를 이전 상태로 되돌리는 작업.');

insert into tblQuestion
values(
154,'Oracle에서 ''시퀀스(Sequence)''의 역할은 무엇인가요?','일련번호를 자동으로 생성하는 객체.');

insert into tblQuestion
values(
155,'Oracle에서 ''인덱스(Index)''의 역할은 무엇인가요?','데이터 검색 속도를 빠르게 하기 위한 데이터베이스 객체.');

insert into tblQuestion
values(
156,'Oracle에서 ''뷰(View)''의 역할은 무엇인가요?','하나 이상의 테이블에서 얻은 결과를 하나의 테이블처럼 보여주는 가상 테이블.');

insert into tblQuestion
values(
157,'Oracle에서 ''트리거(Trigger)''의 역할은 무엇인가요?','특정 이벤트 발생 시 자동으로 실행되는 프로시저.');

insert into tblQuestion
values(
158,'Oracle에서 ''프로시저(Procedure)''와 ''함수(Function)''의 차이점은 무엇인가요?','프로시저는 특정 작업을 수행하지만 반환값이 없고, 함수는 특정 작업을 수행하고 결과값을 반환.');

insert into tblQuestion
values(
159,'Oracle에서 ''조인(Join)''의 역할은 무엇인가요?',' 두 개 이상의 테이블에서 관련 있는 데이터를 결합하여 조회하는 것.');

insert into tblQuestion
values(
160,'Oracle에서 ''데이터베이스 정규화(Database Normalization)''의 목적은 무엇인가요?','데이터 중복을 최소화하고 데이터 무결성을 향상시키기 위한 과정.');

insert into tblQuestion
values(
161,'HTML이란 무엇인가요?','웹 페이지를 구조화하고 의미를 부여하는 마크업 언어.');

insert into tblQuestion
values(
162,'CSS의 역할은 무엇인가요?','웹 페이지의 디자인과 레이아웃을 담당하는 스타일시트 언어.');

insert into tblQuestion
values(
163,'JavaScript의 역할은 무엇인가요?','웹 페이지에 동적인 요소를 추가하고 사용자와 상호작용하는 프로그래밍 언어.');

insert into tblQuestion
values(
164,'HTML에서 ''시맨틱 태그(Semantic Tag)''의 역할은 무엇인가요?','웹 페이지의 콘텐츠에 의미를 부여하여 검색 엔진과 개발자에게 정보를 제공.');

insert into tblQuestion
values(
165,'CSS에서 ''선택자(Selector)''의 역할은 무엇인가요?','스타일을 적용할 HTML 요소를 선택하는 역할.');

insert into tblQuestion
values(
166,'JavaScript에서 ''이벤트(Event)''의 역할은 무엇인가요?','사용자의 행동(클릭, 스크롤 등)에 반응하여 특정 코드를 실행.');

insert into tblQuestion
values(
167,'HTML에서 ''Form'' 태그의 역할은 무엇인가요?','사용자의 데이터를 입력받아 서버로 전송하는 역할.');

insert into tblQuestion
values(
168,'CSS에서 ''박스 모델(Box Model)''의 구성 요소는 무엇인가요?','콘텐츠, 패딩, 보더, 마진.');

insert into tblQuestion
values(
169,'JavaScript에서 ''변수(Variable)''의 역할은 무엇인가요?','데이터를 저장하고 참조하는 역할.');

insert into tblQuestion
values(
170,'HTML, CSS, JavaScript 사이의 관계를 설명해주세요.','HTML은 웹 페이지의 구조를, CSS는 디자인과 레이아웃을, JavaScript는 동적인 요소와 상호작용을 담당.');

insert into tblQuestion
values(
171,'JSP란 무엇인가요?','HTML 내에 자바 코드를 삽입하여 웹 페이지를 동적으로 생성하는 서버 사이드 스크립트 언어.');

insert into tblQuestion
values(
172,'JSP에서 ''스크립트릿(Scriptlet)''의 역할은 무엇인가요?','HTML 내에 자바 코드를 삽입하여 웹 페이지를 동적으로 생성하는 서버 사이드 스크립트 언어.');

insert into tblQuestion
values(
173,'JSP에서 ''디렉티브(Directive)''의 역할은 무엇인가요?','JSP 페이지가 웹 컨테이너에서 실행될 때 필요한 여러 가지 설정 정보를 제공.');

insert into tblQuestion
values(
174,'JSP에서 ''액션태그(Action Tag)''의 역할은 무엇인가요?','JSP 페이지에서 특정 기능을 수행하는 컴포넌트를 사용하는 방법.');

insert into tblQuestion
values(
175,'JSP에서 ''EL(Expression Language의 역할은 무엇인가요?','JSP 페이지에서 데이터를 쉽 출력하거나, JSP 스코프에 저장된 객체에 접근하는 방법.');

insert into tblQuestion
values(
176,'JSP에서 ''JSTL(JSP Standard Tag Library)''의 역할은엇인가요?','JSP 페이지에서 일반적으로 사용하는 기능들을 태그 형태로 제공하는 라이브러리.');

insert into tblQuestion
values(
177,'JSP에서 ''포워드(Forward)''와 ''리다이렉트(Redirect)''의 차이점은 무엇인가요?','포워드는 요청을 다른 자원에 전달하며 주소는 변하지 않고, 리다이렉트는 새로운 요청을 만들어 서버에 보내며 주소가 변함.');

insert into tblQuestion
values(
178,'JSP에서 ''세션(Session)''의 역할은 무엇인가요?','서버에 사용자 정보를 저장하여 사용자의 상태를 유지하는 방법.');

insert into tblQuestion
values(
179,'JSP와 Servlet의 차이점은 무엇인가요?','JSP는 HTML 코드 안에 자바 코드를 삽입하고 Servlet은 자바 코드 안에 HTML 코드를 삽입.');

insert into tblQuestion
values(
180,'JSP 페이지에서 ''스코프(Scope)''의 역할은 무엇인가요?','변수나 객체가 접근 가능한 범위와 생존 주기를 결정.');

insert into tblQuestion
values(
181,'Spring Framework란 무엇인가요?','자바 플랫폼을 위한 오픈 소스 어플리케이션 프레임워크.');

insert into tblQuestion
values(
182,'Spring Framework에서 ''IoC(Inversion of Control)''의 역할은 무엇인가요?','객체의 생성과 생명주기를 관리하며 의존성을 관리하는 기능.');

insert into tblQuestion
values(
183,'Spring Framework에서 ''DI(Dependency Injection)''의 역할은 무엇인가요?','클래스 간의 의존 관계를 스프링 컨테이너가 자동으로 연결해주는 것.');

insert into tblQuestion
values(
184,'Spring에서 ''AOP(Aspect Oriented Programming)''의 역할은 무엇인가요?','공통 기능을 재사용하고 비즈니스 로직에서 분리하여 관리하는 기능.');

insert into tblQuestion
values(
185,'Spring에서 ''MVC(Model-View-Controller)''의 역할은 무엇인가요?','어플리케이션을 Model, View, Controller 세 부분으로 나누어 관리하는 디자인 패턴.');

insert into tblQuestion
values(
186,'Spring에서 ''트랜잭션(Transaction)''의 역할은 무엇인가요?','데이터의 일관성을 유지하며 여러 개의 작업을 하나의 작업 단위로 묶는 기능.
');

insert into tblQuestion
values(
187,'Spring에서 ''DAO(Data Access Object)''의 역할은 무엇인가요?',' 데이터베이스 연결과 CRUD 작업을 추상화하는 객체.');

insert into tblQuestion
values(
188,'Spring에서 ''DTO(Data Transfer Object)''의 역할은 무엇인가요?','계층 간 데이터 교환을 담당하는 객체.');

insert into tblQuestion
values(
189,'Spring에서 ''Bean''이란 무엇인가요?','스프링 IoC 컨테이너가 관리하는 객체.');

insert into tblQuestion
values(
190,'Spring Boot란 무엇인가요?','스프링 기반의 어플리케이션을 빠르고 쉽게 개발할 수 있는 프레임워크.');

insert into tblQuestion
values(
191,'Python이란 무엇인가요?','간결하고 읽기 쉬운 구문을 가진 고수준 프로그래밍 언어.');

insert into tblQuestion
values(
192,'Python에서 ''리스트(List)''의 역할은 무엇인가요?','여러 데이터를 순서대로 저장하고 관리하는 자료형.');

insert into tblQuestion
values(
193,'Python에서 ''딕셔너리(Dictionary)''의 역할은 무엇인가요?','키와 값의 쌍으로 데이터를 저장하고 관리하는 자료형.');

insert into tblQuestion
values(
194,'Python에서 ''튜플(Tuple)''의 특징은 무엇인가요?','변경 불가능한 순서가 있는 자료형.');

insert into tblQuestion
values(
195,'Python에서 ''함수(Function)''의 역할은 무엇인가요?','특정 작업을 수행하는 코드의 묶음.');

insert into tblQuestion
values(
196,'Python에서 ''클래스(Class)''와 ''객체(Object)''의 관계는 무엇인가요?','클래스는 객체를 생성하기 위한 템플릿이고, 객체는 클래스에 정의된 대로 생성된 실체.');

insert into tblQuestion
values(
197,'Python에서 ''모듈(Module)''의 역할은 무엇인가요?','관련된 함수, 클래스, 변수들을 모아놓은 파일.');

insert into tblQuestion
values(
198,'Python에서 ''예외 처리(Exception Handling)''의 역할은 무엇인가요?','프로그램 실행 중 발생할 수 있는 오류를 처리하는 과정.');

insert into tblQuestion
values(
199,'Python에서 ''리스트 컴프리헨션(List Comprehension)''의 역할은 무엇인가요?','리스트를 생성하는 간결하고 효율적인 방법.');

insert into tblQuestion
values(
200,'Python에서 ''람다 함수(Lambda Function)''의 특징은 무엇인가요?','이름 없이 정의하고 사용하는 일회용 함수.');

insert into tblQuestion
values(
201,'Flask란 무엇인가요?','파이썬으로 작성된 마이크로 웹 프레임워크.');

insert into tblQuestion
values(
202,'Flask에서 ''라우팅(Routing)''의 역할은 무엇인가요?','URL을 특정 함수에 연결하는 역할.');

insert into tblQuestion
values(
203,'Flask에서 ''템플릿 엔진(Template Engine)''의 역할은 무엇인가요?','동적 데이터를 HTML에 삽입하여 웹 페이지를 생성하는 역할.');

insert into tblQuestion
values(
204,'Flask에서 ''요청(Request)''과 ''응답(Response)''의 역할은 무엇인가요?','클라이언트에서 서버로 정보를 보내는 것이 요청, 서버에서 클라이언트로 결과를 보내는 것이 응답.');

insert into tblQuestion
values(
205,'Flask에서 ''세션(Session)''의 역할은 무엇인가요?','사용자의 상태를 유지하기 위해 서버에서 관리하는 정보.');

insert into tblQuestion
values(
206,'Flask에서 ''쿠키(Cookie)''의 역할은 무엇인가요?','사용자의 상태를 유지하기 위해 클라이언트에서 관리하는 정보.');

insert into tblQuestion
values(
207,'Flask에서 ''블루프린트(Blueprint)''의 역할은 무엇인가요?','라우트를 모듈화하여 관리하는 방법.');

insert into tblQuestion
values(
208,'Flask에서 ''Flask-SQLAlchemy''의 역할은 무엇인가요?','Flask에서 SQLAlchemy를 쉽게 사용할 수 있도록 도와주는 확장 패키지.');

insert into tblQuestion
values(
209,'Flask에서 ''WTForms''의 역할은 무엇인가요?','웹 폼을 쉽게 다룰 수 있도록 도와주는 확장 패키지.');

insert into tblQuestion
values(
210,'Flask에서 ''Flask-Migrate''의 역할은 무엇인가요?','데이터베이스 스키마 마이그레이션을 쉽게 다룰 수 있도록 도와주는 확장 패키지.');

insert into tblQuestion
values(
211,'Django란 무엇인가요?','파이썬으로 작성된 고수준 웹 프레임워크.');

insert into tblQuestion
values(
212,'Django에서 ''MTV(Model-Template-View)'' 아키텍처란 무엇인가요?','데이터를 다루는 Model, 사용자가 보는 Template, 중간 관리를 담당하는 View로 구성된 디자인 패턴.');

insert into tblQuestion
values(
213,'Django에서 ''ORM(Object-Relational Mapping)''의 역할은 무엇인가요?','데이터베이스를 객체 지향적으로 다루게 해주는 기능.');

insert into tblQuestion
values(
214,'Django에서 ''미들웨어(Middleware)''의 역할은 무엇인가요?','Request와 Response 과정에서 추가 처리를 담당하는 컴포넌트.');

insert into tblQuestion
values(
215,'Django에서 ''관리자 사이트(Admin Site)''의 장점은 무엇인가요?',' 데이터베이스의 내용을 쉽게 확인하고 수정할 수 있는 웹 인터페이스 제공.');

insert into tblQuestion
values(
216,'Django에서 ''Form''의 역할은 무엇인가요?','사용자로부터 데이터를 안전하게 입력받고 검증하는 역할.');

insert into tblQuestion
values(
217,'Django에서 ''세션(Session)''의 역할은 무엇인가요?','사용자의 상태 정보를 일정 시간 동안 저장하고 유지하는 기능.');

insert into tblQuestion
values(
218,'Django에서 ''CSRF(Cross Site Request Forgery)'' 방어 기능의 역할은 무엇인가요?',' 웹 애플리케이션의 취약점을 이용한 공격을 방어하는 기능.');

insert into tblQuestion
values(
219,'Django에서 ''마이그레이션(Migration)''의 역할은 무엇인가요?','데이터베이스 스키마의 변경 사항을 관리하고 반영하는 기능.');

insert into tblQuestion
values(
220,'Django에서 ''Generic View''의 장점은 무엇인가요?','공통적인 웹 개발 패턴을 빠르게 구현할 수 있도록 돕는 기능.');

insert into tblQuestion
values(
221,'Swift란 무엇인가요?','애플이 iOS와 macOS 앱 개발을 위해 만든 강력하고 직관적인 프로그래밍 언어.');

insert into tblQuestion
values(
222,'Swift에서 ''옵셔널(Optional)''의 역할은 무엇인가요?','값이 있을 수도 있고 없을 수도 있는 상황을 안전하게 처리하는 기능.');

insert into tblQuestion
values(
223,'Swift에서 ''클로저(Closure)''의 역할은 무엇인가요?','이름 없이 사용할 수 있는 독립적인 코드 블록.');

insert into tblQuestion
values(
224,'Swift에서 ''프로토콜(Protocol)''의 역할은 무엇인가요?','특정 역할을 수행하기 위한 메서드, 프로퍼티, 기타 요구사항 등을 정의.');

insert into tblQuestion
values(
225,'Swift에서 ''익스텐션(Extension)''의 역할은 무엇인가요?','기존 클래스, 구조체, 열거형에 새로운 기능을 추가하는 기능.');

insert into tblQuestion
values(
226,'Swift에서 ''Enum(Enumeration)''의 역할은 무엇인가요?','특정 그룹의 공통 타입을 안전하게 정의하고 사용하는 기능.');

insert into tblQuestion
values(
227,'Swift에서 ''클래스(Class)''와 ''구조체(Struct)''의 차이점은 무엇인가요?','클래스는 참조 타입이고, 구조체는 값 타입. 클래스는 상속이 가능하지만, 구조체는 불가능.');

insert into tblQuestion
values(
228,'Swift에서 ''가변(Mutable)''과 ''불변(Immutable)''의 차이점은 무엇인가요?','가변은 값이 변경 가능한 변수를 말하고, 불변은 값이 변경 불가능한 상수를 말함.');

insert into tblQuestion
values(
229,'Swift에서 ''타입 추론(Type Inference)''의 역할은 무엇인가요?','컴파일러가 초기값을 기반으로 변수 또는 상수의 타입을 결정하는 기능.');

insert into tblQuestion
values(
230,'Swift에서 ''ARC(Automatic Reference Counting)''의 역할은 무엇인가요?','메모리를 자동으로 관리해주는 기능.');

insert into tblQuestion
values(
231,'Kotlin이란 무엇인가요?','자바 플랫폼을 위한 정적 타입의 프로그래밍 언어.');

insert into tblQuestion
values(
232,'Kotlin에서 ''Null 안전성(Null Safety)''의 역할은 무엇인가요?','null 참조로 인한 런타임 오류를 방지하는 기능.');

insert into tblQuestion
values(
233,'Kotlin에서 ''익스텐션 함수(Extension Function)''의 역할은 무엇인가요?','기존 클래스에 새로운 함수를 추가하는 기능.');

insert into tblQuestion
values(
234,'Kotlin에서 ''람다식(Lambda Expression)''의 역할은 무엇인가요?','이름 없이 사용할 수 있는 함수.');

insert into tblQuestion
values(
235,'Kotlin에서 ''데이터 클래스(Data Class)''의 역할은 무엇인가요?','데이터를 보유하기 위한 클래스를 간결하게 생성하는 기능.');

insert into tblQuestion
values(
236,'Kotlin에서 ''코루틴(Coroutines)''의 역할은 무엇인가요?','비동기 프로그래밍을 간편하게 처리하기 위한 기능.');

insert into tblQuestion
values(
237,'Kotlin에서 ''컬렉션(Collection)''의 역할은 무엇인가요?','여러 데이터를 저장하고 관리하는 객체.');

insert into tblQuestion
values(
238,'Kotlin에서 ''컴패니언 객체(Companion Object)''의 역할은 무엇인가요?','클래스 내부에서만 사용할 수 있는 싱글톤 객체.');

insert into tblQuestion
values(
239,'Kotlin에서 ''조건 표현식(Conditional Expression)''의 역할은 무엇인가요?','조건에 따라 다른 값을 반환하는 표현식.');

insert into tblQuestion
values(
240,'Kotlin에서 ''스마트 캐스팅(Smart Casting)''의 역할은 무엇인가요?','타입 검사 후 자동으로 타입 변환을 수행하는 기능.');

insert into tblQuestion
values(
241,'React란 무엇인가요?','사용자 인터페이스를 구축하기 위한 자바스크립트 라이브러리.');

insert into tblQuestion
values(
242,'React에서 ''컴포넌트(Component)''의 역할은 무엇인가요?','재사용 가능한 독립적인 코드 블록.');

insert into tblQuestion
values(
243,'React에서 ''props''의 역할은 무엇인가요?','부모 컴포넌트로부터 자식 컴포넌트로 데이터를 전달하는 역할.');

insert into tblQuestion
values(
244,'React에서 ''state''의 역할은 무엇인가요?','컴포넌트 내에서 관리되는 동적 데이터.');

insert into tblQuestion
values(
245,'React에서 ''JSX''의 역할은 무엇인가요?',' 자바스크립트 내에서 HTML 코드를 작성할 수 있게 하는 문법.');

insert into tblQuestion
values(
246,'React에서 ''Virtual DOM''의 역할은 무엇인가요?','실제 DOM을 추상화한 개념으로, 효율적인 렌더링을 위해 사용됨.');

insert into tblQuestion
values(
247,'React에서 ''라이프사이클 메서드(Lifecycle Methods)''의 역할은 무엇인가요?','컴포넌트가 생성, 업데이트, 제거되는 과정에서 실행되는 메서드.');

insert into tblQuestion
values(
248,'React에서 ''Hooks''의 역할은 무엇인가요?',' 함수형 컴포넌트에서 상태 관리 및 라이프사이클 기능을 사용할 수 있게 하는 기능.');

insert into tblQuestion
values(
249,'React에서 ''Redux''의 역할은 무엇인가요?','JavaScript 앱의 상태를 예측 가능하게 관리하는 라이브러리.  ');

insert into tblQuestion
values(
250,'React에서 ''Context API''의 역할은 무엇인가요?','컴포넌트 트리 안에서 전역적으로 데이터를 공유할 수 있게 하는 API.');

insert into tblQuestion
values(
251,'ElasticSearch란 무엇인가요?','실시간 분산 검색 및 분석 엔진으로, 정형 및 비정형 데이터를 처리하는 데 사용됩니다.   ');

insert into tblQuestion
values(
252,'ElasticSearch에서 ''인덱스(Index)''란 무엇인가요?','유사한 특성을 가진 문서들의 집합.');

insert into tblQuestion
values(
253,'ElasticSearch에서 ''샤딩(Sharding)''의 역할은 무엇인가요?',' 데이터를 여러 부분으로 분할하여 처리 성능을 향상시키는 기능.');

insert into tblQuestion
values(
254,'ElasticSearch에서 ''복제(Replication)''의 역할은 무엇인가요?','데이터의 안정성을 보장하고 복원력을 높이기 위해 데이터를 복제하는 기능.');

insert into tblQuestion
values(
255,'ElasticSearch에서 ''매핑(Mapping)''이란 무엇인가요?','인덱스에 저장된 문서와 그 필드가 어떻게 저장되고 색인되어야 하는지를 정의하는 과정.');

insert into tblQuestion
values(
256,'ElasticSearch에서 ''분석기(Analyzer)''의 역할은 무엇인가요?','텍스트를 분석하여 검색을 위한 토큰으로 변환하는 역할.');

insert into tblQuestion
values(
257,'ElasticSearch에서 ''집계(Aggregations)''의 역할은 무엇인가요?','데이터를 집계하고 분석하는 기능.');

insert into tblQuestion
values(
258,'ElasticSearch에서 ''클러스터(Cluster)''란 무엇인가요?','하나 이상의 노드로 이루어진 ElasticSearch의 서버 집합.');

insert into tblQuestion
values(
259,'ElasticSearch에서 ''노드(Node)''란 무엇인가요?','클러스터의 일부로, 데이터를 저장하고 클러스터의 인덱싱 및 검색 기능에 참여하는 단일 서버.');

insert into tblQuestion
values(
260,'ElasticSearch에서 ''문서(Document)''란 무엇인가요?','인덱스 내에 저장된 기본 데이터 단위.');

insert into tblQuestion
values(
261,'데이터 구조란 무엇인가요?','데이터를 효율적으로 저장하고 처리하기 위한 방식.
');

insert into tblQuestion
values(
262,'배열(Array)과 연결 리스트(Linked List)의 차이점은 무엇인가요?',' 배열은 고정된 크기를 가지며 연속적인 메모리 공간에 데이터를 저장하지만, 연결 리스트는 각 노드가 데이터와 다음 노드를 가리키는 포인터를 가지며 메모리의 어디에서나 노드를 생성할 수 있습니다.');

insert into tblQuestion
values(
263,'스택(Stack)과 큐(Queue)의 차이점은 무엇인가요?','스택은 후입선출(LIFO: Last In First Out) 방식으로 접근하고, 큐는 선입선출(FIFO: First In First Out) 방식으로 접근합니다.');

insert into tblQuestion
values(
264,'이진 검색 트리(Binary Search Tree)의 특징은 무엇인가요?','모든 노드에 대해 그 노드의 왼쪽 하위 트리에는 해당 노드의 값보다 작은 값을 가진 노드만 존재하고, 오른쪽 하위 트리에는 해당 노드의 값보다 큰 값을 가진 노드만 존재합니다.');

insert into tblQuestion
values(
265,'해시 테이블(Hash Table)의 역할은 무엇인가요?','키를 값에 매핑하여, 키를 통해 데이터를 빠르게 검색하는 구조입니다.');

insert into tblQuestion
values(
266,'그래프(Graph)란 무엇인가요?','노드(Node)와 이 노드들을 연결하는 간선(Edge)으로 구성된 비선형 자료구조입니다.');

insert into tblQuestion
values(
267,'정렬 알고리즘 중 버블 정렬(Bubble Sort)의 원리는 무엇인가요?','인접한 두 항목을 비교하여 필요에 따라 위치를 교환하는 방식으로 동작합니다.');

insert into tblQuestion
values(
268,'퀵 정렬(Quick Sort) 알고리즘의 원리는 무엇인가요?','분할 정복(Divide and Conquer) 방법을 이용하여 정렬하는 알고리즘으로, 한 요소를 선택하고(피벗이라 함) 피벗보다 작은 요소는 모두 피벗의 왼쪽으로, 큰 요소는 모두 피벗의 오른쪽으로 이동시킵니다.');

insert into tblQuestion
values(
269,'이진 검색(Binary Search) 알고리즘의 원리는 무엇인가요?','정렬된 데이터 집합의 중간 요소와 찾고자 하는 값을 비교하여 찾고자 하는 값의 위치를 좁혀나가는 알고리즘입니다');

insert into tblQuestion
values(
270,'그리디 알고리즘(Greedy Algorithm)의 원리는 무엇인가요?','각 단계에서 최적의 해를 선택하는 방식으로, 전체적인 최적해를 구하는데 사용하는 알고리즘입니다.');

insert into tblQuestion
values(
271,'컴퓨터의 기본 구성요소는 무엇인가요?','CPU, 메모리, 입출력 장치.');

insert into tblQuestion
values(
272,'CPU의 역할은 무엇인가요?','컴퓨터의 모든 명령을 제어하고 연산하는 중추 처리 장치.');

insert into tblQuestion
values(
273,'RAM과 ROM의 차이는 무엇인가요?','RAM은 휘발성 메모리로서 전원이 꺼지면 데이터가 사라지고, ROM은 비휘발성 메모리로서 전원이 꺼져도 데이터가 유지됩니다.');

insert into tblQuestion
values(
274,'운영체제의 역할은 무엇인가요?','컴퓨터 하드웨어와 소프트웨어 리소스를 관리하고 사용자와 컴퓨터 사이의 인터페이스 역할을 하는 시스템 소프트웨어.');

insert into tblQuestion
values(
275,'컴퓨터 네트워크란 무엇인가요?',' 데이터를 공유하기 위해 컴퓨터들이 연결된 구조.');

insert into tblQuestion
values(
276,'클라우드 컴퓨팅의 장점은 무엇인가요?','접근성, 비용 효율성, 확장성 등.');

insert into tblQuestion
values(
277,'알고리즘이란 무엇인가요?','문제를 해결하기 위한 명확한 절차나 방법.');

insert into tblQuestion
values(
278,'데이터베이스의 역할은 무엇인가요?',' 관련된 데이터를 효율적으로 저장하고 관리하는데 사용됩니다.');

insert into tblQuestion
values(
279,'컴퓨터 보안의 중요성은 무엇인가요?','비인가자에 의한 데이터 유출이나 시스템 손상을 방지하여 정보와 시스템의 무결성을 유지하기 위함입니다.');

insert into tblQuestion
values(
280,'빅 데이터란 무엇인가요?','전통적인 데이터베이스 시스템으로 처리하기 어려울 정도로 방대한 양의 데이터를 의미합니다.');

-- 공휴일
insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (1, '추석', TO_DATE('2023-09-28', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (2, '추석', TO_DATE('2023-09-29', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (3, '개천절', TO_DATE('2023-10-03', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (4, '한글날', TO_DATE('2023-10-09', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (5, '성탄절', TO_DATE('2023-12-25', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (6, '새해', TO_DATE('2024-01-01', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (7, '설날', TO_DATE('2024-02-09', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (8, '설날', TO_DATE('2024-02-12', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (9, '삼일절', TO_DATE('2024-03-01', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (10, '22대 국회의원 선거', TO_DATE('2024-04-10', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (11, '대체공휴일', TO_DATE('2024-05-06', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (12, '부처님오신날', TO_DATE('2024-05-15', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (13, '현충일', TO_DATE('2024-06-06', 'YYYY-MM-DD'));

insert into tblPublicHoliday (seq_publicHoliday, name, holiday)
values (14, '광복절', TO_DATE('2024-08-15', 'YYYY-MM-DD'));

commit;