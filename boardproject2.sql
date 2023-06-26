
--create table board_info_table(
--    board_info_idx number constraint BOARD_INFO_FK primary key,
--    board_info_name varcharw(500) not null
--);

-- board_info_table 테이블 생성
create table board_info_table (
    board_info_idx number not null primary key,
    board_info_name varchar2(500) not null
);   

insert into board_info_table values (1, '자유게시판');
insert into board_info_table values (2, '유머게시판');
insert into board_info_table values (3, '정치게시판');
insert into board_info_table values (4, '스포츠게시판');

select * from board_info_table order by board_info_idx;
commit;



-- create table user_table(
--  user_idx number constraint USER_FK primary key,
--  user_name varchar2(50) not null,
--  user_id varchar2(100) not null,
--  user_pw varchar2(100) not null
--  );

-- user_table 테이블 생성    
create table user_table (
    user_idx number not null primary key,
    user_name varchar2(50) not null,
    user_id varchar2(100) not null,
    user_pw varchar2(100) not null
);

select * from user_table;
select user_name from user_table where user_id = 'abcd';

select user_idx, user_name from user_table where user_id='spring' and user_pw='1234';

SELECT user_id, user_name FROM user_table WHERE user_idx = '0';

insert into user_table values(user_seq.nextval, '더조은', 'spring', '1234');
insert into user_table values(user_seq.nextval, '아카데미', 'java', '1234');
insert into user_table values(user_seq.nextval, '학원', 'python', '1234');

update user_table set user_pw = '4567' where user_idx=1;
SELECT user_id, user_name FROM user_table WHERE user_idx = 3;

commit;

-- content_table 테이블 생성
create table content_table (
    content_idx number not null primary key,
    content_subject varchar2(500) not null,
    content_text long not null,
    content_file varchar2(500),
    content_writer_idx number not null constraint CONTENT_FK1 references user_table(user_idx),
    content_board_idx number not null constraint CONTENT_FK2 references board_info_table(board_info_idx),
    content_date date not null
);

--alter table content_table add constraint pk1 foreign key(content_writer_idx) references user_table(user_idx);
--alter table content_table add constraint pk2 foreign key(content_board_idx) references board_info_table(board_info_idx);

insert into content_table values(content_seq.nextval, #{content_subject}, #{content_text}, #{content_file}, #{content_writer_idx}, #{content_board_idx}, sysdate);


select * from content_table;

commit;

-- sequence 생성
create sequence user_seq start with 0 increment by 1 minvalue 0;
create sequence content_seq start with 0 increment by 1 minvalue 0;


select * from tabs;
select * from board_info_table;

















    