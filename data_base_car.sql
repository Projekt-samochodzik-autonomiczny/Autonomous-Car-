CREATE TABLE `uzytkownik` (
  `id` integer PRIMARY KEY,
  `imie` string,
  `nazwisko` string,
  `indeks` integer,
  `grupa` integer
);

CREATE TABLE `pojazd` (
  `id` integer PRIMARY KEY,
  `pojemnosc_baterii` float,
  `naped` string,
  `predkosc_obrotowa_silnika` float
);

CREATE TABLE `przejazd` (
  `id` integer PRIMARY KEY,
  `czas` timestamp,
  `pojazd_id` integer NOT NULL,
  `uzytkownik_id` integer NOT NULL,
  `zuzycie_baterii` float
);

ALTER TABLE `przejazd` ADD FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownik` (`id`);

ALTER TABLE `przejazd` ADD FOREIGN KEY (`pojazd_id`) REFERENCES `pojazd` (`id`);
