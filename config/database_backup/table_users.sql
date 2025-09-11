CREATE TABLE users(
	id BIGSERIAL PRIMARY KEY,
	firstname VARCHAR(30) NOT NULL,
	lastname VARCHAR(30) NOT NULL,
	mobile_number VARCHAR(20) NOT NULL,
	ide_number VARCHAR(15) NULL UNIQUE,
	adress TEXT NULL,
	birthdate DATE NULL,
	email VARCHAR(200) NOT NULL UNIQUE,
	password TEXT NOT NULL,
	status BOOLEAN NOT NULL DEFAULT TRUE,
	created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
	delete_at TIMESTAMPTZ NULL
);

INSERT INTO users(
	firstname,
	lastname,
	mobile_number,
	email,
	password
)
VALUES (
	'Eladio',
	'Fa',
	'302asdasd',
	'jas12321@gmail.com',
	'1234'
);

INSERT INTO users(
	firstname,
	lastname,
	mobile_number,
	email,
	password
)
VALUES (
	'Eladio1',
	'Fa1',
	'302as1dasd',
	'jas12321@g1mail.com',
	'1234'
);

INSERT INTO users(
	firstname,
	lastname,
	mobile_number,
	email,
	password
)
VALUES (
	'Eladi1o',
	'Fa1',
	'302asdas1d',
	'jas132321@gmail.com',
	'1234'
);