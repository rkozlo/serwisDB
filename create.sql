set client_encoding='utf-8'; 

create table klient(
	id					serial PRIMARY KEY,
	imie_kl				varchar(15) NOT NULL,
	nazwisko_kl			varchar(25) NOT NULL,
	nr_tel				int NOT NULL,
	adres				varchar(40)
);

create table uslugi(
	id					serial PRIMARY KEY,
	nazwa_uslugi		varchar(40) NOT NULL UNIQUE,
	cena_uslugi			int NOT NULL
);

create table czesci(
	id					serial PRIMARY KEY,
	nazwa_czesci		varchar(40) NOT NULL UNIQUE,
	cena				int NOT NULL,
	ilosc				int
);

create table pracownik(
	id					serial PRIMARY KEY,
	imie_prac			varchar(20) NOT NULL,
	nazwisko_prac		varchar(25) NOT NULL,
	stanowisko			varchar(15)
);

create table sprzet(
	id					serial PRIMARY KEY,
	data_przyj			date not null,
	data_zakon			date,
	nr_seryjny			varchar(20),
	kategoria			varchar(20),
	model				varchar(15),
	id_klient			int NOT NULL,
	id_pracownik		int,
	constraint			id_klient_fk FOREIGN KEY(id_klient)
						references klient(id)
						ON DELETE CASCADE ON UPDATE CASCADE,
	constraint			id_pracownik_fk FOREIGN KEY(id_pracownik)
						references pracownik(id)
						ON DELETE SET NULL ON UPDATE CASCADE
);

create table wykonane_uslugi(			
	id_uslugi			int NOT NULL,
	id_sprzet			int NOT NULL,
	constraint			id_uslugi_fk FOREIGN KEY(id_uslugi)
						references uslugi(id)
						ON DELETE CASCADE ON UPDATE CASCADE,
	constraint			id_sprzet_fk FOREIGN KEY(id_sprzet)
						references sprzet(id)
						ON DELETE CASCADE ON UPDATE CASCADE
);

create table uzyte_czesci(
	id_czesci			int NOT NULL,
	id_sprzet			int NOT NULL,
	constraint			id_czesci_fk FOREIGN KEY(id_czesci)
						references czesci(id)
						ON DELETE CASCADE ON UPDATE CASCADE,
	constraint			id_sprzet_fk FOREIGN KEY(id_sprzet)
						references sprzet(id)
						ON DELETE CASCADE ON UPDATE CASCADE
);

create table faktura(
    id                  serial PRIMARY KEY,
	nr_faktury			varchar(12),
	id_pracownik		int,
	id_sprzet			int NOT NULL UNIQUE,
	data_wyst			date NOT NULL,
	constraint			id_pracownik_fk FOREIGN KEY(id_pracownik)
						references pracownik(id)
						ON DELETE SET NULL ON UPDATE CASCADE,
	constraint			id_sprzet_fk FOREIGN KEY(id_sprzet)
						references sprzet(id)
						ON DELETE CASCADE ON UPDATE CASCADE
);
