-- obnizanie stanów w razie sprzedania cześci
CREATE OR REPLACE FUNCTION zmien_stan() RETURNS TRIGGER AS $$
DECLARE
    stan integer;
BEGIN
    select ilosc from czesci where id = new.id_czesci into stan;
    IF stan = 0 THEN
        RAISE NOTICE 'Brak czesci na stanie';
        return Null;
    ELSE
        UPDATE czesci SET ilosc=ilosc-1 where ID=NEW.id_czesci;
    END IF;
    return NEW;
END
$$ language 'plpgsql';


CREATE TRIGGER tg_zmien_stan BEFORE INSERT OR UPDATE ON uzyte_czesci
    FOR EACH ROW EXECUTE PROCEDURE zmien_stan();
    
-- podwyższanie stanu
CREATE OR REPlACE FUNCTION przywroc_stan() RETURNS TRIGGER AS $$
BEGIN
    UPDATE czesci SET ilosc=ilosc+1 where ID = old.id_czesci;
    return OLD;
END
$$ language 'plpgsql';

CREATE TRIGGER tg_przywracanie AFTER DELETE ON uzyte_czesci
    FOR EACH ROW EXECUTE PROCEDURE przywroc_stan();

-- licznik do faktur
create SEQUENCE liczenie increment by 1;
    
CREATE PROCEDURE ustaw_licznik(var1 varchar, rok varchar)
LANGUAGE SQL
AS $$
    SELECT setval(var1, (select CAST(SUBSTR(max(nr_faktury), 4, 4) as INTEGER) from faktura 
        where substr(nr_faktury, 9, 12) = rok));
$$;

-- generowanie numeru faktury, uzupełnianie pozostałych brakujących danych
CREATE OR REPLACE FUNCTION nowa_faktura() RETURNS TRIGGER AS $$
DECLARE
ostatnia varchar;
temp varchar;
rok varchar;
obecny varchar;
BEGIN
    select substr(cast(now() as varchar), 1, 4) into obecny;
    call ustaw_licznik('liczenie', obecny);
    rok := (select MAX(substr(nr_faktury, 9, 12)) from faktura);
    ostatnia = CAST((nextval('liczenie')) as varchar);
    IF obecny <> rok or rok is NULL then
        PERFORM setval('liczenie', 1);
        select substr(cast(now() as varchar), 1, 4) into rok;
        ostatnia := 1;
    END IF;

    LOOP EXIT WHEN CHAR_LENGTH(ostatnia) = 4;
        ostatnia := '0' || ostatnia;
    END LOOP;
    temp := ('FV/' || ostatnia || '/' || rok);

    NEW.nr_faktury = temp;
    if NEW.data_wyst is NULL then
        NEW.data_wyst := now();
    END IF;
    
    if NEW.id_pracownik is NULL then
        NEW.id_pracownik := (select id_pracownik from sprzet where sprzet.id = NEW.id_sprzet);
    END IF;
    
    if NEW.data_wyst is NULL then
        NEW.data_wyst := now();
    END IF;
    return NEW;
END
$$ language 'plpgsql';

CREATE TRIGGER tg_nowa_faktura BEFORE INSERT ON faktura
    FOR EACH ROW EXECUTE PROCEDURE nowa_faktura();
    
-- uzupełnianie daty zakończenia w tabeli sprzet jezeli nie zostało wcześniej uzupełnione  
CREATE FUNCTION uzupelnij_date() RETURNS TRIGGER AS $$
BEGIN
    IF (select data_zakon from sprzet where id = (select id_sprzet from faktura where ID=NEW.ID)) is null then
            update sprzet set data_zakon=NEW.data_wyst where id=(select id_sprzet from faktura where faktura.id=NEW.id);
    END IF;
    return NEW;
END
$$ language 'plpgsql';

CREATE TRIGGER tg_uzupelnij_date AFTER INSERT ON faktura
    FOR EACH ROW EXECUTE FUNCTION uzupelnij_date();


