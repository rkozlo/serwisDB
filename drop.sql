set client_encoding='utf-8';

drop view podsumowanie;
drop view faktury_klientow;
drop view uzycie_czesci;
drop view wartosc_faktur;
drop view wartosc_czesci;
drop view wartosc_uslug;
drop table faktura;
drop table uzyte_czesci;
drop table wykonane_uslugi;
drop table sprzet;
drop table pracownik;
drop table czesci;
drop table uslugi;
drop table klient;


drop function zmien_stan;
drop function przywroc_stan;
drop function nowa_faktura;
drop function uzupelnij_date;
drop sequence liczenie;
drop procedure ustaw_licznik;
