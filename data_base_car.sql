CREATE TABLE `uzytkownik` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `imie` varchar(255),
  `nazwisko` varchar(255),
  `indeks` integer,
  `grupa` integer
);

CREATE TABLE `pojazd` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `pojemnosc_baterii` float,
  `naped` varchar(255),
  `predkosc_obrotowa_silnika` float
);

CREATE TABLE `przejazd` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `czas` timestamp,
  `pojazd_id` integer NOT NULL,
  `uzytkownik_id` integer NOT NULL
);

ALTER TABLE `przejazd` ADD FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownik` (`id`);

ALTER TABLE `przejazd` ADD FOREIGN KEY (`pojazd_id`) REFERENCES `pojazd` (`id`);

