set serveroutput on; 

execute inserare_date.tabel_push(); 


--verificare trigger
INSERT INTO detalii_spectacole VALUES(12, 1000, 'Bivolari, Judetul Iasi', 12, TO_DATE('10.08.2019', 'DD.MM.YYYY'));

select * from angajati;
select * from detalii_angajati;
select * from detalii_spectacole;


--tranzactie
execute spectacol_nou(1,4);
select * from participanti_spec;

--functia
set SERVEROUTPUT ON;
begin 
    dbms_output.put_line('Angajatii cu salar egal cu 2500 : ' || SALARAR_COUNT(2500)); 
end; 
/ 



