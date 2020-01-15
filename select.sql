-- lista wykonanych usług dla konkretnej faktury

select * from uslugi where id in
	(select id_uslugi from wykonane_uslugi where id_sprzet in
	 	(select id from sprzet where id in
		 (select id_sprzet from faktura where nr_faktury like 'FV/0001/2019')));

-- lista części na fakturze

select * from czesci where id in
	(select id_czesci from uzyte_czesci where id_sprzet in
		(select id from sprzet where id =
			(select id_sprzet from faktura where nr_faktury like 'FV/0001/2019')));

-- ilość wykonanych napraw przez pracowników

select nazwisko_prac as Nazwisko,imie_prac as Imie, count(*) 
    from sprzet join pracownik on sprzet.id_pracownik = pracownik.id group by nazwisko_prac, imie_prac; 
    
-- czas naprawy dla sprzetów które zostały już naprawione

select data_przyj, data_zakon, data_zakon-data_przyj as czas_naprawy, kategoria, model 
    from sprzet where data_zakon is not null;

-- klient na którego została wystawiona faktura

select * from klient where id =(
    select id_klient from sprzet where id =(
        select id_sprzet from faktura where nr_faktury like'FV/0001/2019'));

-- lista klientów która nic jeszcze nie naprawiała
select * from klient where id not in(select id_klient from sprzet);

-- czesci ktore nie zostały jeszcze sprzedane
select * from czesci where id not in(select id_czesci from uzyte_czesci);

--klienci bez uzupełnionego numeru telefonu
select * from klient where adres is null;

-- wartość wszystkich faktur, wymagane view.sql
select wartosc_faktur.nr_faktury, sum(zaplata) as Zaplata 
    from wartosc_faktur group by nr_faktury order by Zaplata desc;


select * from klient where nazwisko_kl like 'Miras';


select * from czesci where nazwa_czesci like '%Procesor%';
