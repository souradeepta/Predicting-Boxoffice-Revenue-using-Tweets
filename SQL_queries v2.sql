 ALTER TABLE test1.test23214 MODIFY COLUMN tweet VARCHAR(255)
    CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;	
    
create table testnew1(time int(60), username VARCHAR(20), tweet VARCHAR(200))

0 row(s) affected, 2 warning(s): 3719 'utf8' is currently an alias for the character set UTF8MB3, but will be an alias for UTF8MB4 in a future release. Please consider using UTF8MB4 in order to be unambiguous. 3778 'utf8_general_ci' is a collation of the deprecated character set UTF8MB3. Please consider using UTF8MB4 with an appropriate collation instead. Records: 0  Duplicates: 0  Warnings: 2


ALTER TABLE mydb1.tweets3 MODIFY COLUMN tweet VARCHAR(200)  
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;


#Selecting our database
use mydb1;

#creating table containing new tweets for movies to process
create table tweets3(tweetID varchar(50), movies_movieName VARCHAR(200), dateTime datetime(6), tweet Varchar(200), result varchar (6), confidence float(6))

#changing the data fields to match UTF-8
ALTER TABLE mydb1.tweets3 MODIFY COLUMN tweet VARCHAR(200)  
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;

#display the table with new tweets
select * from tweets3

#creating the table containing old tweets to train regression models
create table tweets_old(tweetID varchar(50), movies_movieName VARCHAR(200), dateTime datetime(6), tweet Varchar(200), result varchar (6), confidence float(6))
ALTER TABLE mydb1.tweets_old MODIFY COLUMN result VARCHAR(200)  
    CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL

#display the table with old tweets
select * from tweets_old


#update modifier for fields
SET SQL_SAFE_UPDATES = 0;

#update names in fields
UPDATE tweets3
SET movies_movieName = 'Once Upon A Deadpool'
WHERE movies_movieName = 'Deadpool';

#add boxofffice
ALTER TABLE tweets_old
ADD boxoffice INTEGER;

#update boxoffice in fields
UPDATE tweets3
SET movies_movieName = 'Once Upon A Deadpool'
WHERE movies_movieName = 'Deadpool';