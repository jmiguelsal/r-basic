DROP DATABASE IF EXISTS titanic;

CREATE DATABASE IF NOT EXISTS titanic
DEFAULT CHARACTER SET = 'utf8' 
DEFAULT COLLATE 'utf8_general_ci';

USE titanic;

CREATE TABLE titanic
(
id int NOT NULL AUTO_INCREMENT,
survived tinyint(1),
pclass tinyint(1),
sex ENUM ('male', 'female'),
age decimal(4,2),
sibsp tinyint(1),
parch tinyint(1),
fare float(7,4),
embarked ENUM ('C', 'Q', 'S'),
class ENUM ('First', 'Second', 'Third'),
who  ENUM ('man', 'woman', 'child'),
adult_male tinyint(1),
deck ENUM ('A', 'B', 'C', 'D', 'E', 'F', 'G'),
embark_town ENUM ('Cherbourg', 'Queenstown', 'Southampton'),
alive ENUM ('no', 'yes'),
alone tinyint(1),
PRIMARY KEY (id)
);

SET SESSION sql_mode='NO_AUTO_VALUE_ON_ZERO';