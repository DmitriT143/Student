
CREATE DATABASE Mtuci_db

CREATE TABLE MTUCI_Department(ID serial PRIMARY KEY not NULL, Name varchar(70) not NULL, Decanat varchar(25));
CREATE TABLE Student_group(ID serial PRIMARY KEY not NULL, Name varchar(20) not NULL, Department varchar(50) references MTUCI_Department(ID));
CREATE TABLE students(ID serial PRIMARY KEY not NULL, Name varchar(50) not NULL,second_name VARCHAR(50), passport_ID varchar(50), Student_group serial references Student_group(ID));

INSERT INTO MTUCI_Department(name,Decanat) VALUES('ИТ-Информационные Техноголии','edindekanatmtuci');
INSERT INTO MTUCI_Department(name,Decanat) VALUES('СиСС-Сети и системы связи','edindekanatmtuci');

INSERT INTO Student_group(name, Department) VALUES('БВТ2205','1');
INSERT INTO Student_group(name, Department) VALUES('БФИ2203','1');
INSERT INTO Student_group(name, Department) VALUES('БИН2201','2');
INSERT INTO Student_group(name, Department) VALUES('БИН2202','2');

INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Матвей','Зубков','All the information is fabricated and false','1');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Юрий','Мартынов','All the information is fabricated and false','1');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Михаил','Шмелёв','All the information is fabricated and false','1');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Мария','Денисова','All the information is fabricated and false','1');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Анна','Порткова','All the information is fabricated and false','1');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Ульяна','Старостина','All the information is fabricated and false','2');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Эмин','Виноградов','All the information is fabricated and false','2');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Владислав','Смирнов','All the information is fabricated and false','2');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Диана','Ефремова','All the information is fabricated and false','2');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Александра','Новикова','All the information is fabricated and false','2');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Вероника','Попова','All the information is fabricated and false','4');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Лев','Орлов','All the information is fabricated and false','4');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Александр','Шевцов','All the information is fabricated and false','4');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Максим','Афанасьев','All the information is fabricated and false','4');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Тимофей','Иванов','All the information is fabricated and false','4');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Валерия','Колпакова','All the information is fabricated and false','5');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Василий','Тарасов','All the information is fabricated and false','5');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Павел','Смирнов','All the information is fabricated and false','5');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Максим','Ерохин','All the information is fabricated and false','5');
INSERT INTO students(name, second_name, blank_passport, Student_group) VALUES('Артём','Наумов','All the information is fabricated and false','5');