 ALTER TABLE test1.test23214 MODIFY COLUMN tweet VARCHAR(255)
    CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;	
    
create table testnew1(time int(60), username VARCHAR(20), tweet VARCHAR(200))

0 row(s) affected, 2 warning(s): 3719 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous. 3778 'utf8_general_ci' is a collation of the deprecated character set UTF8MB3. Please consider using UTF8MB4 with an appropriate collation instead. Records: 0  Duplicates: 0  Warnings: 2


ALTER TABLE mydb1.tweets3 MODIFY COLUMN tweet VARCHAR(200)  
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;


use mydb1;


create table tweets3(tweetID varchar(50), movies_movieName VARCHAR(200), dateTime datetime(6), tweet Varchar(200), result varchar (6), confidence float(6))

create table tweets_old(tweetID varchar(50), movies_movieName VARCHAR(200), dateTime datetime(6), tweet Varchar(200), result varchar (6), confidence float(6))
ALTER TABLE mydb1.tweets_old MODIFY COLUMN result VARCHAR(200)  
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
    
select * from tweets_old

select * from tweets3
