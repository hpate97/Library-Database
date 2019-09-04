DROP DATABASE IF EXISTS Library;

CREATE DATABASE Library;
USE Library;
-- your code here to build the library

CREATE TABLE Customer (
	name 	            VARCHAR(20) NOT NULL,
	id 			          numeric(9),
	check_out			    varchar(10) check (check_out in ('Yes', 'No')),
 	check_in			    numeric(2,0),
  on_hold			      varchar(10) check (on_Hold in ('Yes', 'No')),
  remove_hold			  varchar(10),
	PRIMARY KEY (name, id)
);

CREATE TABLE Staff (
	id 	           NUMERIC(9) NOT NULL,
  remove_book			VARCHAR(40),
  move_book       VARCHAR(40),
  find_customer   VARCHAR(40),
  create_customer VARCHAR(40),
  salary          NUMERIC(9,2) check (salary  > 5000),
  worktime        VARCHAR(40),
  workduty        VARCHAR(40),
  PRIMARY KEY (id)
);


CREATE TABLE Administrator (
	id 		    numeric(9) NOT NULL,
	hire		  VARCHAR(40),
	fire		  VARCHAR(40),
	adjsal		VARCHAR(40),
	revokemem		VARCHAR(40),
	searchstaff		  VARCHAR(40),
	liststaff		    VARCHAR(40),
	PRIMARY KEY (id)
);

CREATE TABLE Books (
	id 		    numeric(9) NOT NULL,
	title		  VARCHAR(40),
	author 		VARCHAR(40),
  num_copies		  numeric(9),
  genre		        VARCHAR(40),
	tag		          VARCHAR(40),
	PRIMARY KEY (id)
);

CREATE TABLE BooksInfo (
	id 			        numeric(9) NOT NULL,
	title 		      VARCHAR(40),
	author 		      VARCHAR(40),
	location		    VARCHAR(40),
	is_available		VARCHAR (20) check (Is_Available in ('Yes' , 'No')),
  is_onhold		    VARCHAR (20) check (Is_onHold in ('Yes' , 'No')),
  is_damaged		  VARCHAR (20) check (Is_Damaged in ('Yes' , 'No')),
	ddnum           NUMERIC(9),
	customer_id     NUMERIC(9),
	PRIMARY KEY (id)
);


CREATE TABLE WorkShifts(
  staffid    NUMERIC(9) NOT NULL,
  worked     VARCHAR(40),
  nextshift  VARCHAR(40),
  PRIMARY KEY(staffid)
);

CREATE TABLE CheckInandOut(
  customer_id      NUMERIC(9) NOT NULL,
  lastcheckedout  VARCHAR(40),
  lastcheckedin   VARCHAR(40),
  popgenre        VARCHAR(40),
  id              NUMERIC(9),
  PRIMARY KEY(customer_id)
);

CREATE TABLE BooksByMonth(
  month   VARCHAR(40) NOT NULL,
  numout  NUMERIC(40),
  numin   NUMERIC(40),
  year    NUMERIC(40),
  PRIMARY KEY(Month)
);

-- end code block