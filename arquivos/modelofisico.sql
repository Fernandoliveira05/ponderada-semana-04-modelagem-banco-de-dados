-- CRIA A TABELA USUÁRIOS
CREATE TABLE users (
id SERIAL PRIMARY KEY,
id_contact_users INTEGER,
name VARCHAR(70),
email VARCHAR(30),
password VARCHAR(50),
age INTEGER,
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(20),
neighborhood VARCHAR(50),
gender VARCHAR(10),
type_of_housing VARCHAR(20),
income INTEGER,
people_in_house INTEGER,
family_construction VARCHAR(50)
);
-- CRIA A TABELA TEVE CACHORRO OU VIVEU COM
CREATE TABLE had_dogs_or_lived_with (
id SERIAL PRIMARY KEY,
id_users INTEGER,
id_people_in_option INTEGER,
dog_description TEXT,
dog_name VARCHAR(30),
time_with_the_dog VARCHAR,
first_dog_question BOOLEAN,
pets_in_home INTEGER,
dog_arrived_age VARCHAR(20),
neutered BOOLEAN,
age_neutered VARCHAR(50),
dog_breed VARCHAR(50),
dog_origin VARCHAR(60),
dog_price VARCHAR(20),
first_impression_of_dog TEXT,
most_like TEXT,
dislike VARCHAR(200),
go_to_vet BOOLEAN,
vet_frequency VARCHAR(60),
last_contact VARCHAR(60),
dog_age_in_last_contact VARCHAR(30),
reason_of_last_contact VARCHAR(200),
would_have_new_dog BOOLEAN,
reason TEXT,
id_dog_reason INTEGER
);
-- CRIA A TABELA DE CONTATO COM OS USUÁRIOS
CREATE TABLE contact_users (
id SERIAL PRIMARY KEY,
phone_number INTEGER,
email VARCHAR(30)
);
-- CRIA A TABELA NÃO TEM, PORÉM QUER
CREATE TABLE dont_have_but_want (
id SERIAL PRIMARY KEY,
id_users INTEGER,
dog_size VARCHAR(10),
dog_coat VARCHAR(10),
dog_breed VARCHAR(60),
dog_gender VARCHAR(10),
though_dog_name BOOLEAN,
dog_name VARCHAR(50),
prefer_adopt_or_buy VARCHAR(10),
when_will_receive_the_dog VARCHAR(20),
personality_expectations TEXT,
know_about_costs TEXT,
id_dog_reason INTEGER
);
-- CRIA A TABELA NUNCA CONVIVEU E NÃO PRETENDE
CREATE TABLE dont_lived_and_dont_want (
id SERIAL PRIMARY KEY,
id_users INTEGER,
why_dont_want TEXT
);
-- CRIA A TABELA RAZÃO PARA SE TER O CACHORRO
CREATE TABLE dog_reason (
id SERIAL PRIMARY KEY,
kids_company BOOLEAN,
company BOOLEAN,
dogs_company BOOLEAN,
children_responsability BOOLEAN,
friends_have BOOLEAN,
protection BOOLEAN,
appearence BOOLEAN,
help_friend_couldnt_keep_it BOOLEAN, 
save_my_life BOOLEAN, 
cute BOOLEAN, 
gift BOOLEAN, 
chose_me BOOLEAN
);
-- CRIA A TABELA TEM CACHORRO
CREATE TABLE have_dogs (
id SERIAL PRIMARY KEY,
id_users INTEGER,
dog_name VARCHAR(60),
owner BOOLEAN,
neutered BOOLEAN,
dog_gender BOOLEAN,
time_with_you VARCHAR(30),
first_dog BOOLEAN,
how_many_pets_in_home INTEGER,
dog_age VARCHAR(20),
dog_breed VARCHAR(60),
where_get VARCHAR(50),
was_paid BOOLEAN,
age_arrived VARCHAR(20),
dog_personality VARCHAR(300),
favorite_dog_traits TEXT,
people_in_decision VARCHAR(50),
dog_not_home VARCHAR(300),
vet_frequency VARCHAR(50),
dog_summary TEXT,
id_dog_reason INTEGER
);
-- CRIA RELAÇÕES DE FOREIGN KEYS
ALTER TABLE users ADD FOREIGN KEY (id_contact_users) REFERENCES contact_users (id);
ALTER TABLE had_dogs_or_lived_with ADD FOREIGN KEY (id_users) REFERENCES users (id);
ALTER TABLE had_dogs_or_lived_with ADD FOREIGN KEY (id_people_in_option) REFERENCES people_in_option (id);
ALTER TABLE had_dogs_or_lived_with ADD FOREIGN KEY (id_dog_reason) REFERENCES dog_reason (id);
ALTER TABLE dont_have_but_want ADD FOREIGN KEY (id_users) REFERENCES users (id);
ALTER TABLE dont_have_but_want ADD FOREIGN KEY (id_dog_reason) REFERENCES dog_reason (id);
ALTER TABLE dont_lived_and_dont_want ADD FOREIGN KEY (id_users) REFERENCES users (id);
ALTER TABLE have_dogs ADD FOREIGN KEY (id_users) REFERENCES users (id);
ALTER TABLE have_dogs ADD FOREIGN KEY (id_dog_reason) REFERENCES dog_reason (id);