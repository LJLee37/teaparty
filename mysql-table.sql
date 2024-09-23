use teaparty;
create table users(
  id int not null auto_increment primary key,
  username varchar(255) not null unique,
  google_id varchar(255) not null unique,
  email varchar(255) not null,
  created_at timestamp default current_timestamp
);
create table tea_company(
  id int not null auto_increment primary key,
  name varchar(255) not null unique,
  country varchar(255) default null,
  created_at timestamp default current_timestamp
);
create table tea_name(
  id int not null auto_increment primary key,
  name varchar(255) not null unique,
  created_at timestamp default current_timestamp
);
create table leaf_type(
  id int not null auto_increment primary key,
  type varchar(255) not null unique
);
create table reviews(
  id int not null auto_increment primary key,
  user_id int not null,
  title varchar(255) not null,
  tea_company_id int not null,
  tea_name_id int not null,
  leaf_type_id int not null,
  review text not null,
  created_at timestamp default current_timestamp,
  modified_at timestamp default current_timestamp on update current_timestamp,
  foreign key(user_id) references users(id),
  foreign key(tea_company_id) references tea_company(id),
  foreign key(tea_name_id) references tea_name(id),
  foreign key(leaf_type_id) references leaf_type(id)
);
