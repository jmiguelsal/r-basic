# survived: sobrevivio. 0 <- no, 1 <- si
SELECT distinct(survived) FROM titanic.titanic; # 0, 1

# pclass: clase.
SELECT distinct(pclass) FROM titanic.titanic; # 1, 2, 3

# sex:
SELECT distinct(sex) FROM titanic.titanic; # 'male', 'female'

# age:
SELECT distinct(age) FROM titanic.titanic; # "float", 'nan'

# sibsp: número de hermanos o cónyuges a bordo
SELECT distinct(sibsp) FROM titanic.titanic; # 0, 1, 2, 3, 4, 5, 8

# parch: número de padre o hijos a bordo
SELECT distinct(parch) FROM titanic.titanic; # 0, 1, 2, 3, 4, 5, 6

# fare: tarifa
SELECT distinct(fare) FROM titanic.titanic; # "float"

# Puerto de embarque (C = Cherbourg; Q = Queenstown; S = Southampton
SELECT distinct(embarked) FROM titanic.titanic; # C, Q, S, 'nan'

# class:
SELECT distinct(class) FROM titanic.titanic; # 'First', 'Second', 'Third'

# who:
SELECT distinct(who) FROM titanic.titanic; # 'man', 'woman', 'child'

# adult:
SELECT distinct(adult_male) FROM titanic.titanic; # 'True', 'False'

# deck: cubierta: zona del barco donde se alojaba el individuo
SELECT distinct(deck) FROM titanic.titanic; # 'A', 'B', 'C, 'D', 'E', 'F', 'G', 'nan'

# embark_town: Ciudad de embarque
SELECT distinct(embark_town) FROM titanic.titanic; # 'Cherbourg', 'Queenstown', 'Southampton', 'nan'

# alive: 
SELECT distinct(alive) FROM titanic.titanic; # 'yes', 'no'

# alone: 
SELECT distinct(alone) FROM titanic.titanic; # 'True', 'False'


SELECT who, adult_male, COUNT(*) FROM titanic.titanic GROUP BY who, adult_male;

SELECT who, adult_male, COUNT(*) FROM titanic.titanic WHERE who = 'woman' AND adult_male = 'False';
SELECT who, adult_male, COUNT(*) FROM titanic.titanic WHERE who = 'male' AND adult_male = 'False';
SELECT who, adult_male, COUNT(*) FROM titanic.titanic WHERE who = 'child' AND adult_male = 'False';

SELECT embarked, embark_town FROM titanic.titanic WHERE embarked LIKE 'nan' OR embark_town LIKE 'nan'