CREATE TABLE accounts (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  firm_id int default NULL,
  credit_limit int default NULL
)

CREATE TABLE companies (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  type varchar(50) default NULL,
  ruby_type varchar(50) default NULL,
  firm_id int default NULL,
  name varchar(50) default NULL,
  client_of int default NULL,
  rating int default 1
)

CREATE TABLE topics (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  title varchar(255) default NULL,
  author_name varchar(255) default NULL,
  author_email_address varchar(255) default NULL,
  written_on datetime default NULL,
  bonus_time datetime default NULL,
  last_read datetime default NULL,
  content text,
  approved tinyint default 1,
  replies_count int default 0,
  parent_id int default NULL,
  type varchar(50) default NULL
)

CREATE TABLE developers (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  name varchar(100) default NULL,
  salary int default 70000
);

CREATE TABLE projects (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  name varchar(100) default NULL
);

CREATE TABLE developers_projects (
  developer_id int NOT NULL,
  project_id int NOT NULL,
  joined_on datetime default NULL
);

CREATE TABLE customers (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  name varchar(100) default NULL,
  balance int default 0,
  address_street varchar(100) default NULL,
  address_city varchar(100) default NULL,
  address_country varchar(100) default NULL,
  gps_location varchar(100) default NULL
);

CREATE TABLE movies (
  movieid int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  name varchar(100) default NULL
);

CREATE TABLE subscribers (
  nick varchar(100) NOT NULL PRIMARY KEY,
  name varchar(100) default NULL
);

CREATE TABLE booleantests (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  value bit default NULL
);

CREATE TABLE auto_id_tests (
  auto_id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  value int default NULL
);

CREATE TABLE entrants (
  id int NOT NULL PRIMARY KEY,
  name varchar(255) NOT NULL,
  course_id int NOT NULL
);

CREATE TABLE colnametests (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  [references] int NOT NULL
);

CREATE TABLE mixins (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  parent_id int default NULL, 
  pos int default NULL,
  created_at datetime default NULL,
  updated_at datetime default NULL,
  lft int default NULL,
  rgt int default NULL,
  root_id int default NULL,
  type varchar(40) default NULL    
);

CREATE TABLE people (
  id int NOT NULL IDENTITY(1, 1),
  first_name varchar(40) NULL,
  lock_version int default 0,
  PRIMARY KEY (id)
);

CREATE TABLE binaries (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  data image NULL
);

CREATE TABLE computers (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  developer int NOT NULL
);

CREATE TABLE tasks (
  id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
  starting datetime default NULL,
  ending datetime default NULL
);
