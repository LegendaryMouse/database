BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "tour" (
	"tour_id"	INTEGER NOT NULL UNIQUE,
	"tour_name"	TEXT,
	"country_code"	TEXT,
	"tour_cost"	INTEGER,
	"additionals"	INTEGER,
	"tour_types"	TEXT,
	"maximum_amount"	INTEGER,
	PRIMARY KEY("tour_id")
);
CREATE TABLE IF NOT EXISTS "request" (
	"request_id"	INTEGER NOT NULL UNIQUE,
	"person_id"	INTEGER,
	"tour_id"	INTEGER,
	"hotel_id"	INTEGER,
	PRIMARY KEY("request_id")
);
CREATE TABLE IF NOT EXISTS "client" (
	"person_id"	INTEGER UNIQUE,
	"visa"	INTEGER,
	PRIMARY KEY("person_id")
);
CREATE TABLE IF NOT EXISTS "roles" (
	"person_id"	INTEGER UNIQUE,
	"role_name"	TEXT,
	PRIMARY KEY("person_id")
);
CREATE TABLE IF NOT EXISTS "hotel" (
	"hotel_id"	INTEGER UNIQUE,
	"hotel_name"	TEXT,
	"hotel_stars"	INTEGER,
	"hotel_country"	TEXT,
	PRIMARY KEY("hotel_id")
);
INSERT INTO "tour" VALUES (1,'Болгарское наследие','BG',35700,1,'Международный туризм, Лечебко-оздоровительные туры, Пляжные туры',127);
INSERT INTO "tour" VALUES (2,'Волшебный  Восток','AE',77100,1,'Международный туризм, Пляжные  туры',92);
INSERT INTO "tour" VALUES (3,'Город с большими амбициями','DE',93300,1,'Международный туризм, Экскурсионные хуры, Обслуживание корпоративных клиентов по заказу',72);
INSERT INTO "tour" VALUES (4,'Город четырех ворот','DE',72500,1,'Международный туризм, Экскурсионные  туры',143);
INSERT INTO "tour" VALUES (5,'Горячий отдых зимой и летом','AT',31900,0,'Международньй туризм, Экскурсионные туры, Культурно-исторические туры',34);
INSERT INTO "tour" VALUES (6,'Древний Минск','BY',74000,1,'Внутренний туризм, Экскурсионные туры, Культурно-исторические туры',43);
INSERT INTO "tour" VALUES (7,'«Культурно-исторические туры»  Жемчужина Татарстана','RU',651000,1,'"Внутренний туризм, Экскурсионные туры, Культурно-исторические туры',224);
INSERT INTO "tour" VALUES (8,'Знакомьтесь. Амстердам','NL',68300,1,'«Международный туризм, Лечебно-оздоровительные туры»',283);
INSERT INTO "tour" VALUES (9,'Из Алании к загадочным пешерам Алтынбешик','TR',62200,1,'«Международный туризм»',215);
INSERT INTO "tour" VALUES (10,'Культурно-исторические туры, Пляжные туры Многоликий Сувон','KR',53200,1,'"Международный туризм, Специализированные детские  туры, Экскурсионные  туры, Обслуживание корпоративных клиентов  по заказу.',30);
INSERT INTO "request" VALUES (1,1,1,1);
INSERT INTO "request" VALUES (2,2,2,2);
INSERT INTO "request" VALUES (3,3,3,3);
INSERT INTO "request" VALUES (4,4,4,4);
INSERT INTO "request" VALUES (5,5,5,5);
INSERT INTO "request" VALUES (6,6,6,6);
INSERT INTO "request" VALUES (7,7,7,7);
INSERT INTO "request" VALUES (8,8,8,8);
INSERT INTO "request" VALUES (9,9,9,9);
INSERT INTO "request" VALUES (10,10,10,10);
INSERT INTO "client" VALUES (1,1);
INSERT INTO "client" VALUES (2,1);
INSERT INTO "client" VALUES (3,0);
INSERT INTO "client" VALUES (4,0);
INSERT INTO "client" VALUES (5,1);
INSERT INTO "client" VALUES (6,1);
INSERT INTO "client" VALUES (7,1);
INSERT INTO "client" VALUES (8,1);
INSERT INTO "client" VALUES (9,0);
INSERT INTO "client" VALUES (10,1);
INSERT INTO "roles" VALUES (1,'member');
INSERT INTO "roles" VALUES (2,'member');
INSERT INTO "roles" VALUES (3,'member');
INSERT INTO "roles" VALUES (4,'member');
INSERT INTO "roles" VALUES (5,'manager');
INSERT INTO "roles" VALUES (6,'member');
INSERT INTO "roles" VALUES (7,'manager');
INSERT INTO "roles" VALUES (8,'member');
INSERT INTO "roles" VALUES (9,'administrator');
INSERT INTO "roles" VALUES (10,'member');
INSERT INTO "hotel" VALUES (1,'Hotel Artemide',5,'Spain');
INSERT INTO "hotel" VALUES (2,'H10 Madison',4,'Finland');
INSERT INTO "hotel" VALUES (3,'A Room With A View',3,'Spain');
INSERT INTO "hotel" VALUES (4,'Hotel Rec Barcelona',5,'Spain');
INSERT INTO "hotel" VALUES (5,'Aydinli Cave Hotel',2,'Spain');
INSERT INTO "hotel" VALUES (6,'Titanic Business Kartal',3,'Spain');
INSERT INTO "hotel" VALUES (7,'Amber Design Residence',3,'Finland');
INSERT INTO "hotel" VALUES (8,'Hotel AI Ponte Mocenigo',5,'Russia');
INSERT INTO "hotel" VALUES (9,'La Cachette',4,'Russia');
INSERT INTO "hotel" VALUES (10,'Celsus 8outique Hotel',3,'UK');
COMMIT;
