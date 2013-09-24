CREATE TABLE venue {
	id serial primary key,
	name varchar(50),
	address varchar(50),
	venue_id varchar(50),
	tips text, 
	here_now integer,

}



CREATE TABLE neighborhoods {
	id serial primary key,
	name varchar(50),
}


CREATE TABLE user {
	id serial primary key,
	username varchar(50),
	password varchar(50),
	favorites varchar(50),

}


