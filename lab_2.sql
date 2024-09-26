ALTER TABLE security_check
ADD CONSTRAINT fk_passenger_security
FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id);

ALTER TABLE booking
ADD CONSTRAINT fk_passenger_booking
FOREIGN KEY (passenger_id) references passengers(passenger_id);

ALTER TABLE baggage_check
ADD CONSTRAINT fk_passenger_baggagecheck
FOREIGN KEY (passenger_id) references passengers(passenger_id);

ALTER TABLE baggage_check
ADD CONSTRAINT fk_booking_baggagecheck
FOREIGN KEY (booking_id) references booking(booking_id);

ALTER TABLE baggage
ADD CONSTRAINT fk_booking_baggage
FOREIGN KEY (booking_id) references booking(booking_id);

ALTER TABLE boarding_pass
ADD CONSTRAINT fk_booking_boardingpass
FOREIGN KEY (booking_id) references booking(booking_id);

ALTER TABLE booking_flight
ADD CONSTRAINT fk_booking_flight
FOREIGN KEY (booking_id) references booking(booking_id);

ALTER TABLE booking_flight
ADD CONSTRAINT fk_flight_booking_flight
FOREIGN KEY (flight_id) references flights(flight_id);

ALTER TABLE flights
ADD CONSTRAINT  fk_departing_airport_id
FOREIGN KEY (departing_airport_id) references airport(airport_id);

ALTER TABLE flights
ADD CONSTRAINT fk_flights_arriving_airport
FOREIGN KEY (arriving_airport_id) references airport(airport_id);

ALTER TABLE flights
ADD CONSTRAINT fk_flights_1
FOREIGN KEY (airline_id) references airline(airline_id);

insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('3300', 'Cheadle Airport', 'France', 'Rhône-Alpes', 'La Tour-du-Pin', '2024-02-03', '2023-12-03');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('4359', 'Joshua Mqabuko Nkomo International Airport', 'China', null, 'Santiaoshi', '2024-09-16', '2024-06-25');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2414', 'Gachsaran Airport', 'Indonesia', null, 'Timba Lauk', '2024-04-30', '2024-06-28');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('181', 'Pond Inlet Airport', 'Saudi Arabia', null, 'Al Qaţīf', '2024-08-18', '2024-01-06');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1302', 'Grenoble-Isère Airport', 'Argentina', null, 'Colegiales', '2024-02-03', '2024-02-19');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('981', 'Benguera Island Airport', 'China', null, 'Hongqi Yingzi', '2024-09-16', '2024-06-16');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('43', 'Lubang Airport', 'Russia', null, 'Dolgoprudnyy', '2023-09-28', '2023-11-22');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('53', 'Hamburg Airport', 'Finland', null, 'Tarvasjoki', '2023-10-14', '2024-02-09');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('42', 'Stykkishólmur Airport', 'Brazil', null, 'Cachoeirinha', '2024-06-15', '2024-01-09');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('5772', 'Wells Municipal Airport/Harriet Field', 'Brazil', null, 'São Mateus do Maranhão', '2024-01-06', '2024-09-17');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('297', 'Pangsuma Airport', 'Poland', null, 'Wilga', '2024-04-22', '2023-10-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1635', 'Yorkton Municipal Airport', 'China', null, 'Ya’erya', '2024-05-25', '2024-01-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('430', 'Yichun Mingyueshan Airport', 'Japan', null, 'Ibara', '2024-05-25', '2024-05-11');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('236', 'Vava''u International Airport', 'Indonesia', null, 'Gunungkoneng', '2024-07-18', '2023-09-28');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1234', 'Jumandy Airport', 'France', 'Centre', 'Orléans', '2023-12-11', '2024-04-13');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2001', 'Dianópolis Airport', 'China', null, 'Hujiagou', '2024-09-20', '2024-07-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1345', 'Fritzlar Airport', 'China', null, 'Hejiaping', '2024-04-07', '2024-09-15');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('935', 'Warangal Airport', 'China', null, 'Hezuo', '2023-11-29', '2024-08-08');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('226', 'Venâncio Aires Airport', 'Philippines', null, 'Burauen', '2024-07-12', '2023-11-02');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('746', 'Loring International Airport', 'Palestinian Territory', null, 'Al ‘Awjā', '2024-01-21', '2023-10-03');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('552', 'Mungeranie Airport', 'Madagascar', null, 'Ambanja', '2024-04-06', '2023-12-16');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('305', 'Nomad River Airport', 'Ukraine', null, 'Tsyurupyns’k', '2024-06-07', '2024-02-29');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('483', 'Ware Airport', 'Indonesia', null, 'Cibaregbeg', '2024-06-13', '2023-10-20');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('3320', 'Baglung Airport', 'Bosnia and Herzegovina', null, 'Petkovci', '2024-06-05', '2024-05-02');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1503', 'Ewo Airport', 'Russia', null, 'Gigant', '2024-01-14', '2024-07-12');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('90', 'Aiambak Airport', 'Czech Republic', null, 'Tlumačov', '2024-01-22', '2024-01-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('39', 'Cururupu Airport', 'China', null, 'Tangqian', '2023-12-28', '2024-01-09');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('5330', 'Jomo Kenyatta International Airport', 'Central African Republic', null, 'Carnot', '2023-11-08', '2024-01-27');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1212', 'London-Corbin Airport/Magee Field', 'Nigeria', null, 'Wagini', '2024-08-18', '2023-12-09');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('282', 'Radin Inten II (Branti) Airport', 'Mongolia', null, 'Mayhan', '2024-04-15', '2024-02-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1661', 'Alfonso López Pumarejo Airport', 'Philippines', null, 'Ramain', '2023-12-07', '2024-07-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('706', 'Longjia Airport', 'Indonesia', null, 'Laranganglintong', '2024-01-15', '2024-08-08');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('219', 'Sélibaby Airport', 'Portugal', 'Braga', 'Corvite', '2024-04-12', '2024-06-07');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('7200', 'Pelaneng Airport', 'Czech Republic', null, 'Hostomice', '2024-02-25', '2024-05-11');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('454', 'Gordonsville Municipal Airport', 'Mexico', 'Mexico', 'San Isidro', '2023-12-20', '2023-12-04');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('170', 'Siasi Airport', 'Croatia', null, 'Laslovo', '2024-02-09', '2024-04-22');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('123', 'Binbrook Airfield', 'China', null, 'Hukou', '2023-11-02', '2024-05-01');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('4700', 'Tum Airport', 'Brazil', null, 'Aragarças', '2024-06-04', '2024-01-05');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1047', 'Straubing Airport', 'France', 'Île-de-France', 'Paris 02', '2024-01-16', '2023-10-30');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2278', 'Yaoundé Nsimalen International Airport', 'Indonesia', null, 'Sukasenang', '2024-06-03', '2024-03-19');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2715', 'Tancredo Neves International Airport', 'Croatia', null, 'Prelog', '2024-02-24', '2024-03-20');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('424', 'Berlevåg Airport', 'Japan', null, 'Nonoichi', '2023-12-03', '2024-03-12');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('0', 'Gorge Harbour Seaplane Base', 'Japan', null, 'Sōja', '2024-09-15', '2023-12-25');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1245', 'Errol Airport', 'Poland', null, 'Wola Jachowa', '2024-09-10', '2023-12-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('362', 'Rokeby Airport', 'South Korea', null, 'Kunsan', '2024-04-04', '2024-01-12');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('48', 'College Park Airport', 'Philippines', null, 'Malasugui', '2024-02-20', '2024-02-22');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2644', 'Corvo Airport', 'China', null, 'Jingzhou', '2024-04-02', '2024-05-31');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('10', 'Tugdan Airport', 'France', 'Île-de-France', 'Bobigny', '2023-12-19', '2024-07-07');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('772', 'Dongola Airport', 'China', null, 'Gouyan', '2024-05-24', '2024-08-27');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('529', 'Roseburg Regional Airport', 'France', 'Rhône-Alpes', 'Saint-Chamond', '2024-07-15', '2024-06-13');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1168', 'Boende Airport', 'Czech Republic', null, 'Rájec-Jestřebí', '2024-09-08', '2024-05-31');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('342', 'Syktyvkar Airport', 'Mexico', 'Veracruz Llave', 'Morelos', '2024-03-10', '2024-07-31');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1223', 'Christchurch International Airport', 'Vietnam', null, 'Bác Ái', '2024-03-25', '2024-06-06');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2525', 'Suffield Heliport', 'China', null, 'Qimantage', '2024-05-23', '2024-03-04');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('911', 'Waukesha County Airport', 'Indonesia', null, 'Citeguh', '2024-04-17', '2023-11-24');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('4173', 'Douglas Municipal Airport', 'Iraq', null, 'Zākhū', '2024-02-02', '2024-01-27');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2947', 'Ogdensburg International Airport', 'United States', 'Florida', 'Miami', '2023-11-16', '2023-11-26');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1830', 'Xienglom Airport', 'Germany', 'Baden-Württemberg', 'Karlsruhe', '2024-08-18', '2024-02-04');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('901', 'Piedras Negras International Airport', 'Philippines', null, 'Bayawan', '2024-03-03', '2024-02-07');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1949', 'Donnelly Airport', 'China', null, 'Emin', '2024-05-18', '2024-04-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('469', 'Fort Smith Regional Airport', 'Afghanistan', null, 'Adraskan', '2024-06-15', '2023-11-03');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1460', 'Presidente Venceslau Airport', 'South Africa', null, 'Noupoort', '2024-04-09', '2024-09-21');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('795', 'Suavanao Airport', 'Netherlands', 'Provincie Noord-Brabant', 'Tilburg', '2023-10-02', '2024-09-11');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('14', 'Ralph Wien Memorial Airport', 'Poland', null, 'Skoroszyce', '2024-06-25', '2023-10-02');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('234', 'Simón Bolívar International Airport', 'Indonesia', null, 'Kutampi', '2024-01-31', '2023-12-05');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('46', 'Sauren Airport', 'Portugal', 'Porto', 'Seroa', '2024-05-22', '2024-09-15');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('222', 'Redhill Aerodrome', 'Liberia', null, 'Zwedru', '2024-04-13', '2024-04-24');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('7', 'Napuka Island Airport', 'China', null, 'Sangba', '2024-06-12', '2024-07-01');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('97', 'Modesto City Co-Harry Sham Field', 'China', null, 'Yong’an', '2024-01-25', '2024-06-22');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('61', 'Rar Gwamar Airport', 'China', null, 'Sairam', '2024-08-03', '2024-07-19');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('390', 'Texarkana Regional Webb Field', 'Norway', 'Nordland', 'Fauske', '2023-11-19', '2024-05-28');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1497', 'Eastern Oregon Regional At Pendleton Airport', 'China', null, 'Shiqiao', '2024-02-19', '2024-05-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('60', 'Sanggata/Sangkimah Airport', 'China', null, 'Nanfeng', '2024-01-11', '2024-01-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('400', 'Santa Rosalia Airport', 'Philippines', null, 'McKinley', '2023-12-30', '2024-09-01');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('918', 'Fort Scott Municipal Airport', 'China', null, 'Fengtai Chengguanzhen', '2024-04-01', '2023-12-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1132', 'Zweibrücken Airport', 'China', null, 'Huazhou', '2023-12-14', '2024-02-12');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('221', 'Cresswell Downs Airport', 'Colombia', null, 'Sahagún', '2024-03-16', '2024-01-25');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('3290', 'Kuyol Airport', 'Indonesia', null, 'Keleleng', '2024-09-05', '2024-04-03');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('32', 'Tabal Airstrip', 'Sweden', 'Jönköping', 'Jönköping', '2024-08-05', '2024-03-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('25', 'Mamitupo Airport', 'China', null, 'Ganjiachang', '2023-10-31', '2024-08-30');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('80', 'Monbetsu Airport', 'Russia', null, 'Krasnaya Gorka', '2024-08-03', '2024-02-24');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('837', 'Wheeler Army Airfield', 'Sweden', 'Västra Götaland', 'Billdal', '2024-01-19', '2024-02-08');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('730', 'Kavalerovo Airport', 'China', null, 'Datangzhuang', '2023-10-31', '2024-04-01');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('7011', 'Tep Tep Airport', 'Indonesia', null, 'Sukadana', '2024-06-08', '2024-08-22');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('2182', 'Matsumoto Airport', 'Thailand', null, 'Suphan Buri', '2023-10-18', '2024-01-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('7630', 'Addis Ababa Bole International Airport', 'France', 'Île-de-France', 'Clichy', '2024-04-01', '2024-03-04');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('13', 'Mukah Airport', 'Thailand', null, 'Hankha', '2024-01-25', '2024-02-13');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('517', 'Gostomel Airport', 'China', null, 'Machikou', '2023-11-27', '2023-12-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('180', 'Sept-Îles Airport', 'Russia', null, 'Chelyabinsk', '2024-09-21', '2024-04-23');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1961', 'Hastings Municipal Airport', 'Indonesia', null, 'Waihibar', '2023-12-24', '2023-11-25');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('86', 'Gazipaşa Airport', 'Philippines', null, 'Duran', '2024-06-26', '2024-02-10');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('4121', 'Borama Airport', 'Russia', null, 'Sovetskaya', '2024-09-06', '2024-06-12');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('5956', 'Del Bajío International Airport', 'Indonesia', null, 'Belang', '2024-08-28', '2024-05-19');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('45', 'Wapolu Airport', 'Bolivia', null, 'Yacuíba', '2024-07-12', '2024-05-20');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('720', 'Okmulgee Regional Airport', 'China', null, 'Tewulike', '2024-07-24', '2023-10-09');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1041', 'Raipur Airport', 'Ukraine', null, 'Krinichnaya', '2023-11-22', '2023-12-30');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('498', 'Turbat International Airport', 'Indonesia', null, 'Rembes', '2024-05-24', '2024-09-04');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('1355', 'Grand Rapids Itasca Co-Gordon Newstrom field', 'Indonesia', null, 'Girang', '2023-12-07', '2024-08-01');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('640', 'Lake Nash Airport', 'Ukraine', null, 'Tomakivka', '2024-05-31', '2024-01-19');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values ('249', 'Hluhluwe Airport', 'Japan', null, 'Fukumitsu', '2023-12-03', '2024-05-25');

insert into airline (airline_id, airline_code, airline_name, airline_country, created_at, updated_at)
values ('777','KA', 'KazAir', 'Kazakhstan', current_timestamp, current_timestamp);

update airline
set airline_country = 'Turkey'
where airline_name = 'KazAir';

DELETE FROM airline
WHERE airline_name = 'SIT';

INSERT INTO airline(airline_id, airline_code, airline_name, airline_country, created_at, updated_at)
values('1242', 'AE', 'AirEasy', 'France', current_timestamp, current_timestamp),
('1122', 'FH', 'FlyHigh', 'Brazil', current_timestamp, current_timestamp),
('1277', 'FF', 'FlyFly', 'Poland', current_timestamp, current_timestamp);

DELETE FROM flights WHERE EXTRACT(YEAR FROM sch_arrival_time) = 2024;

UPDATE booking
set ticket_price = booking.ticket_price *1.10;

DELETE from booking
where ticket_price < 1000;