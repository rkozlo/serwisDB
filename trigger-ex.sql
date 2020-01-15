-- generowanie numeru faktury i uzupełnianie pozostałych danych jeżeli nie zostały podane
select * from faktura where id_sprzet=3;

select * from sprzet where id=3;

insert into faktura(id_sprzet) values(3);

select * from faktura where id_sprzet=3;

select * from sprzet where id=3;

-- zmienianie stanu magazynowego

select * from czesci where id=9;

insert into uzyte_czesci(id_czesci, id_sprzet) values(9, 1);

select * from czesci where id=9;

select * from czesci where id=1;

insert into uzyte_czesci(id_czesci, id_sprzet) values(1, 1);
