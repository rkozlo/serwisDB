insert into klient(imie_kl, nazwisko_kl, nr_tel, adres)
			values('Anna', 'Pozyra', 423523412, 'Gdańsk');
insert into klient(imie_kl, nazwisko_kl, nr_tel, adres)
			values('Marcin', 'Biler', 235642723, 'Pszczółki');
insert into klient(imie_kl, nazwisko_kl, nr_tel, adres)
			values('Tomasz', 'Miras', 873447931, 'Tczew');
insert into klient(imie_kl, nazwisko_kl, nr_tel, adres)
			values('Monika', 'Miras', 854644214, 'Tczew');
insert into klient(imie_kl, nazwisko_kl, nr_tel, adres)
			values('Bartosz', 'Górek', 126707752, 'Gdynia');
insert into klient(imie_kl, nazwisko_kl, nr_tel, adres)
			values('Katarzyna', 'Preus', 534641432, 'Wejherowo');
insert into klient(imie_kl, nazwisko_kl, nr_tel, adres)
			values('Sergiej', 'Poroszenko', 643965172, 'Gdańsk');
insert into klient(imie_kl, nazwisko_kl, nr_tel)
            values('Mariusz', 'Sawczuk', 720714521);


insert into pracownik(imie_prac, nazwisko_prac, stanowisko)
			values('Jan', 'Kozyra', 'Serwisant');
insert into pracownik(imie_prac, nazwisko_prac, stanowisko)
			values('Daniel', 'Makowski', 'Kierownik');
insert into pracownik(imie_prac, nazwisko_prac, stanowisko)
			values('Ewa', 'Tulip', 'Ksiegowa');
insert into pracownik(imie_prac, nazwisko_prac, stanowisko)
			values('Marek', 'Zabawski', 'Serwisant');
insert into pracownik(imie_prac, nazwisko_prac, stanowisko)
			values('Patryk', 'Jedlin', 'Serwisant');			
			
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Wymiana plyty glownej', 80.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Instalacja systemu operacyjnego', 50.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Diagnoza', 40.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Wymiana karty graficznej', 40.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Reballing', 150.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Lutowanie gniazda', 100.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Wymiana pasty termoprzewodzacej', 50.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
			values('Wymiana procesora', 60.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
            values('Czyszczenie', 40.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
            values('Dowóz', 50.00);
insert into uslugi(nazwa_uslugi, cena_uslugi)
            values('Złożenie komputera', 80.00);


insert into czesci(nazwa_czesci, cena, ilosc)
			values('Płyta głowna B350 ASRock', 250.00, 2);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Płyta główna X470 MSI', 630.00, 1);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Płyta głowna H310 ASUS', 420.00, 2);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Karta graficzna GTX 1060', 800.00, 4);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Karta graficzna RX570', 700.00, 2);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Pasta termoprzewodząca MX-4', 35.00, 10);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('System operacyjny Windows 10 Home', 500.00, 2);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Procesor Intel i5-8400', 800.00, 2);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Procesor AMD Ryzen 5 2600', 700.00, 3);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Zestaw śrubokrętów', 45.00, 6);
insert into czesci(nazwa_czesci, cena, ilosc)
			values('Obudowa SilentiumPC Armis AR1', 130.00, 4);


			
insert into sprzet(data_przyj, nr_seryjny, kategoria, model, id_klient, id_pracownik)
			values('2018-10-05', 6731, 'Laptop', 'Lenovo', 1, 1);
insert into sprzet(data_przyj, nr_seryjny, kategoria, model, id_klient, id_pracownik)
			values('2019-04-09', 1231, 'Laptop', 'Acer', 1, 1);
insert into sprzet(data_przyj, nr_seryjny, kategoria, model, id_klient, id_pracownik)
			values('2019-04-13', 1221, 'Komputer stacjonarny', 'HP', 3, 5);
insert into sprzet(data_przyj, nr_seryjny, kategoria, model, id_klient, id_pracownik)
			values('2019-04-18', 0001, 'Zasilacz', 'Silentium PC', 5, 4);
insert into sprzet(data_przyj, data_zakon, kategoria, model, id_klient, id_pracownik)
			values('2019-03-30', '2019-04-08', 'Komputer stacjonarny', 'MSI', 4, 1);
insert into sprzet(data_przyj, data_zakon, kategoria, model, id_klient, id_pracownik)
			values('2019-04-15', '2019-04-18', 'Klawiatura', 'Logitech', 4, 4);
insert into sprzet(data_przyj, nr_seryjny, kategoria, model, id_klient, id_pracownik)
            values('2019-05-01', 12421, 'Komputer stacjonarny', 'Alienvare', 6, 5);
insert into sprzet(data_przyj, nr_seryjny, kategoria, id_klient, id_pracownik)
            values('2019-05-05', 00321, 'Komputer stacjonarny',  8, 4);
insert into sprzet(data_przyj, nr_seryjny, kategoria, model, id_klient, id_pracownik)
            values('2019-05-07', 85632, 'Laptop', 'MSI',  8, 4);

insert into uzyte_czesci(id_czesci, id_sprzet)
			values(6, 4);
insert into uzyte_czesci(id_czesci, id_sprzet)
			values(5, 4);
insert into uzyte_czesci(id_czesci, id_sprzet)
            values(4, 7);
insert into uzyte_czesci(id_czesci, id_sprzet)
            values(1, 3);
insert into uzyte_czesci(id_czesci, id_sprzet)
            values(7, 7);
insert into uzyte_czesci(id_czesci, id_sprzet)
            values(10, 9);
insert into uzyte_czesci(id_czesci, id_sprzet)
            values(7, 8);
insert into uzyte_czesci(id_czesci, id_sprzet)
            values(1, 8);
insert into uzyte_czesci(id_czesci, id_sprzet)
            values(9, 8);
            
insert into wykonane_uslugi(id_uslugi, id_sprzet)
			values(7, 4);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
			values(4, 4);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(9, 5);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(2, 7);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(4, 7);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(4, 7);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(8, 8);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(9, 8);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(10, 8);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(11, 8);
insert into wykonane_uslugi(id_uslugi, id_sprzet)
            values(6, 9);




insert into faktura(id_pracownik, id_sprzet, data_wyst)
            values(1, 1, '2018-10-05');
insert into faktura(id_pracownik, id_sprzet, data_wyst)
			values(1, 2, '2019-04-15');
insert into faktura(id_pracownik, id_sprzet, data_wyst)
			values(1, 4, '2019-04-18');
insert into faktura(id_pracownik, id_sprzet, data_wyst)
			values(5, 5, '2019-04-30');
insert into faktura(id_pracownik, id_sprzet, data_wyst)
			values(1, 7, '2019-05-12');
insert into faktura(id_pracownik, id_sprzet, data_wyst)
            values(1, 8, '2019-05-18');


