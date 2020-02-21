SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS REVIEW;
DROP TABLE IF EXISTS BOOK;
DROP TABLE IF EXISTS TICKET;
DROP TABLE IF EXISTS ACTIV;
DROP TABLE IF EXISTS ROOM;
DROP TABLE IF EXISTS INN;
DROP TABLE IF EXISTS PLAN;
DROP TABLE IF EXISTS LOCAL;

DROP TABLE IF EXISTS member_auth;
DROP TABLE member_auth cascade;

DROP TABLE IF EXISTS PLANNER;
DROP TABLE IF EXISTS member cascade;
DROP TABLE IF EXISTS TOUR;
DROP TABLE IF EXISTS TRANS;



/* Create Tables */

CREATE TABLE ACTIV
(
	activ_uid int NOT NULL AUTO_INCREMENT,
	activ_name varchar(50) NOT NULL,
	activ_loc varchar(50) NOT NULL,
	activ_info text,
	activ_shop_info text,
	activ_tel int,
	activ_pic varchar(200),
	PRIMARY KEY (activ_uid),
	UNIQUE (activ_uid)
);


CREATE TABLE BOOK
(
	book_uid int NOT NULL AUTO_INCREMENT,
	book_date date NOT NULL,
	book_member_cnt int NOT NULL DEFAULT 1,
	book_cost int NOT NULL,
	book_name varchar(100) NOT NULL,
	book_member_name varchar(50) NOT NULL,
	book_member_tel int NOT NULL,
	member_uid int,
	room_uid int,
	ticket_uid int,
	tour_uid int,
	plan_uid int,
	PRIMARY KEY (book_uid),
	UNIQUE (book_uid)
);


CREATE TABLE INN
(
	inn_uid int NOT NULL AUTO_INCREMENT,
	inn_name varchar(50) NOT NULL,
	inn_loc varchar(100) NOT NULL,
	inn_ment text,
	inn_info text,
	inn_sep int CHECK (inn_sep IN (1,2,3,4)),
	inn_pic varchar(200),
	PRIMARY KEY (inn_uid),
	UNIQUE (inn_uid)
);


CREATE TABLE LOCAL
(
	local_uid int NOT NULL AUTO_INCREMENT,
	local_name varchar(50) NOT NULL,
	local_hello text,
	local_lat varchar(50) NOT NULL,
	local_lng varchar(50) NOT NULL,
	local_loc varchar(50),
	local_tel varchar(50),
	local_pic varchar(200),
	PRIMARY KEY (local_uid),
	UNIQUE (local_uid)
);


CREATE TABLE MEMBER
(
	member_uid int NOT NULL AUTO_INCREMENT,
	member_name varchar(50),
	member_id varchar(50) NOT NULL,
	member_pw varchar(100) NOT NULL,
	member_pwEncode varchar(100),
	member_email varchar(50) NOT NULL,
	member_gender varchar(2) CHECK(member_gender IN ('M','F')),
	member_birth date,
	member_pic varchar(200) NOT NULL DEFAULT 'nopic',
	member_tel varchar(50) NOT null default '010-0000-0000',
	enabled char(1) default '1',
	auth varchar(50) NOT null default 'ROLE_MEMBER',
	PRIMARY KEY (member_uid),
	UNIQUE (member_uid),
	UNIQUE (member_id),
	UNIQUE (member_email)
);


/*CREATE TABLE member_auth
(
	
	member_id varchar(50) NOT NULL,
	auth varchar(50) NOT null default 'ROLE_MEMBER',
	CONSTRAINT fk_member_auth FOREIGN KEY(member_id) REFERENCES MEMBER(member_id)
);*/


/*INSERT INTO MEMBER (member_id, member_pw, member_email) VALUES ('user00', '1234', '12345');
INSERT INTO MEMBER (member_id, member_pw, member_email) VALUES ('member00', '1234', '12346');
INSERT INTO MEMBER (member_id, member_pw, member_email) VALUES ('admin00', '1234', '12347');

INSERT INTO member_auth VALUES ('user00', 'ROLE_MEMBER');
INSERT INTO member_auth VALUES ('member00', 'ROLE_MEMBER');
INSERT INTO member_auth VALUES ('admin00', 'ROLE_MEMBER');
INSERT INTO member_auth VALUES ('admin00', 'ROLE_ADMIN');
INSERT INTO member_auth VALUES ('qkrwlals1', 'ROLE_MEMBER');*/

-- 확인
/*SELECT u.member_id, u.member_pw ,u.enabled, a.auth
FROM MEMBER u, member_auth a
WHERE u.member_id = a.member_id;*/

select * from member;



CREATE TABLE PLAN
(
	plan_uid int NOT NULL AUTO_INCREMENT,
	plan_date date,
	plan_stay int NOT NULL,
	trans_uid int NOT NULL,
	planner_uid int NOT NULL,
	plan_local_uid int,
	plan_next_local_uid int,
	PRIMARY KEY (plan_uid),
	UNIQUE (plan_uid)
);


CREATE TABLE PLANNER
(
	planner_uid int NOT NULL AUTO_INCREMENT,
	planner_title varchar(50) NOT NULL,
	planner_view_cnt int NOT NULL DEFAULT 0,
	planner_stat int DEFAULT 1 CHECK(planner_stat IN (0,1)),
	planner_cost_trans int DEFAULT 0,
	planner_cost_inn int DEFAULT 0,
	planner_cost_eat int DEFAULT 0,
	planner_cost_etc int DEFAULT 0,
	member_uid int,
	PRIMARY KEY (planner_uid),
	UNIQUE (planner_uid)
);


CREATE TABLE REVIEW
(
	review_uid int NOT NULL AUTO_INCREMENT,
	review_title varchar(50) NOT NULL,
	review_star int NOT NULL,
	review_content text,
	review_id varchar(50) NOT NULL,
	book_uid int NOT NULL,
	PRIMARY KEY (review_uid),
	UNIQUE (review_uid)
);


CREATE TABLE ROOM
(
	room_uid int NOT NULL AUTO_INCREMENT,
	room_name varchar(50) NOT NULL,
	room_info text,
	room_pic varchar(200) DEFAULT 'nopic',
	room_last_cost int NOT NULL,
	inn_uid int NOT NULL,
	room_first_cost int,
	PRIMARY KEY (room_uid),
	UNIQUE (room_uid)
);


CREATE TABLE TICKET
(
	ticket_uid int NOT NULL AUTO_INCREMENT,
	ticket_name varchar(100) NOT NULL,
	ticket_first_cost int,
	ticket_last_cost int NOT NULL,
	ticket_info text,
	activ_uid int NOT NULL,
	PRIMARY KEY (ticket_uid),
	UNIQUE (ticket_uid)
);


CREATE TABLE TOUR
(
	tour_uid int NOT NULL AUTO_INCREMENT,
	tour_name varchar(50) NOT NULL,
	tour_cost int NOT NULL,
	tour_period int,
	tour_info text,
	tour_pic varchar(200),
	PRIMARY KEY (tour_uid),
	UNIQUE (tour_uid)
);


CREATE TABLE TRANS
(
	trans_uid int NOT NULL AUTO_INCREMENT,
	trans_name varchar(50) NOT NULL,
	trans_icon varchar(50),
	PRIMARY KEY (trans_uid),
	UNIQUE (trans_uid)
);


/* Create Foreign Keys */

ALTER TABLE TICKET
	ADD FOREIGN KEY (activ_uid)
	REFERENCES ACTIV (activ_uid)
	ON UPDATE RESTRICT
	ON DELETE CASCADE
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (book_uid)
	REFERENCES BOOK (book_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ROOM
	ADD FOREIGN KEY (inn_uid)
	REFERENCES INN (inn_uid)
	ON UPDATE RESTRICT
	ON DELETE CASCADE
;


ALTER TABLE PLAN
	ADD FOREIGN KEY (plan_next_local_uid)
	REFERENCES LOCAL (local_uid)
	ON UPDATE RESTRICT
	ON DELETE SET NULL
;


ALTER TABLE PLAN
	ADD FOREIGN KEY (plan_local_uid)
	REFERENCES LOCAL (local_uid)
	ON UPDATE RESTRICT
	ON DELETE SET NULL
;


ALTER TABLE BOOK
	ADD FOREIGN KEY (member_uid)
	REFERENCES MEMBER (member_uid)
	ON UPDATE RESTRICT
	ON DELETE SET NULL
;





ALTER TABLE PLANNER
	ADD FOREIGN KEY (member_uid)
	REFERENCES MEMBER (member_uid)
	ON UPDATE RESTRICT
	ON DELETE CASCADE
;





ALTER TABLE PLAN
	ADD FOREIGN KEY (planner_uid)
	REFERENCES PLANNER (planner_uid)
	ON UPDATE RESTRICT
	ON DELETE CASCADE
;


ALTER TABLE BOOK
	ADD FOREIGN KEY (room_uid)
	REFERENCES ROOM (room_uid)
	ON UPDATE RESTRICT
	ON DELETE SET NULL
;


ALTER TABLE BOOK
	ADD FOREIGN KEY (ticket_uid)
	REFERENCES TICKET (ticket_uid)
	ON UPDATE RESTRICT
	ON DELETE SET NULL
;


ALTER TABLE BOOK
	ADD FOREIGN KEY (tour_uid)
	REFERENCES TOUR (tour_uid)
	ON UPDATE RESTRICT
	ON DELETE SET NULL
;


ALTER TABLE PLAN
	ADD FOREIGN KEY (trans_uid)
	REFERENCES TRANS (trans_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;

show tables;
			  
SELECT * FROM MEMBER;
SELECT member_id username, auth FROM MEMBER WHERE member_id = 'alsry1';
insert into member(
	member_name,
	member_id,
	member_pw,
	member_email, 
	member_gender, 
	member_birth,
	member_pic,
	member_tel) values ('조민성', 'qkrdnfka12', 'qkrdnfka1', 'gzgzg2@nate.com', 'M', '19920618', 'aa', '01030651234');



INSERT INTO LOCAL(
	local_name,
	local_hello,
	local_lat,
	local_lng,
	local_loc,
	local_tel
	) VALUES 
('우도(해양도립공원)','소가 누워있는 형상을 하고 있는 제주의 가장 큰 부속섬','33.51949','126.95109','제주특별자치도 제주시 우도면 삼양고수물길 1','064-782-5671'),
('성산일출봉(UNESCO 세계자연유산)','바다위에 우뚝 솟아난 수성화산·유네스코 세계자연유산, 천연기념물 제420호, 올레1코스','33.462147','126.936424','제주특별자치도 서귀포시 성산읍 일출로 284-12','064-783-0959'),
('사려니숲길','제주 숨은 비경 31, 삼나무 향기에 취하며 걷는 아름답고 청정한 숲길','33.40845','126.63976','제주특별자치도 제주시 조천읍 교래리 산 137-1','064-900-8800');


insert into authorities values ('user00', 'ROLE_USER');

