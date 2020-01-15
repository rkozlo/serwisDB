SET client_encoding='utf-8';

create view faktury_klientow as
    select imie_kl as Imię, nazwisko_kl as Nazwisko, data_przyj as Przyjęcie, data_zakon as Zakończenie, 
    kategoria, model, nr_faktury as Faktura
        from klient join sprzet on klient.id=id_klient join faktura on sprzet.id=id_sprzet;

create view uzycie_czesci as
    select nazwa_czesci as Nazwa, count(*) from czesci join uzyte_czesci on id=id_czesci group by nazwa_czesci;

    
create or replace view wartosc_czesci as
    select nr_faktury, sum(czesci.cena) as Zaplata from czesci join uzyte_czesci on id=id_czesci 
        join sprzet on id_sprzet=sprzet.id
        join faktura on faktura.id_sprzet=sprzet.id
            group by nr_faktury;

create or replace view wartosc_uslug as 
    select nr_faktury, sum(cena_uslugi) as Zaplata from uslugi join wykonane_uslugi on uslugi.id=id_uslugi
        join sprzet on wykonane_uslugi.id_sprzet=sprzet.ID
        join faktura on sprzet.id=faktura.id_sprzet
            group by nr_faktury;

create or replace view wartosc_faktur as 
    select nr_faktury as faktura, zaplata from wartosc_czesci union all
    select nr_faktury as faktura, zaplata from wartosc_uslug;
    
create or replace view podsumowanie as
    select faktury_klientow.*, zaplata from wartosc_faktur, faktury_klientow 
        where wartosc_faktur.faktura=faktury_klientow.faktura;
