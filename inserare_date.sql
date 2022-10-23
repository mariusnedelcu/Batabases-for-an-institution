CREATE OR REPLACE PACKAGE inserare_date
IS
    PROCEDURE table_push;
    PROCEDURE insertAng(v_idAng IN angajati.id_angajat%TYPE, v_nume IN angajati.nume%TYPE, v_prenume IN angajati.prenume%TYPE);
    
    PROCEDURE insertDetalii_spec(v_idSpec IN detalii_spectacole.id_spectacol%TYPE, v_pret IN detalii_spectacole.pret_spectacol%TYPE,
        v_adresa IN detalii_spectacole.adresa%TYPE, v_participanti IN detalii_spectacole.nr_participanti%TYPE, 
        v_data IN detalii_spectacole.data_spectacol%TYPE);
        
    PROCEDURE insertDetalii_ang( v_functie IN detalii_angajati.functie_ocupata%TYPE, v_sal IN detalii_angajati.salariu%TYPE, v_dataAng IN detalii_angajati.data_angajare%Type, 
        v_angId IN detalii_angajati.angajati_id_angajat%TYPE);
END inserare_date;
/



CREATE OR REPLACE PACKAGE BODY insert_date
IS
    PROCEDURE tabel_push
    IS
    BEGIN
        INSERT INTO angajati VALUES(1,'Nedelcu','Marius');
        INSERT INTO angajati VALUES(2,'Macarie','Vladut');
        INSERT INTO angajati VALUES(3,'Bibire','Miruna');
        INSERT INTO angajati VALUES(4,'Roata','Oana');
        INSERT INTO angajati VALUES(5,'Davidescu','Elena');
        INSERT INTO angajati VALUES(6,'Roman','Vlad');
        INSERT INTO angajati VALUES(7,'Chelarescu','Vlad');
        INSERT INTO angajati VALUES(8,'Ignat','Eusebiu');
        INSERT INTO angajati VALUES(9,'Dorneanu','Mara');
        INSERT INTO angajati VALUES(10,'Roscan','Vlad');
        INSERT INTO angajati VALUES(11,'Grebles','Eliza');
        
        INSERT INTO detalii_angajati VALUES('dansator',3000,TO_DATE('01.08.2018', 'DD.MM.YYYY'),1);
        INSERT INTO detalii_angajati VALUES('dansator',2500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),2);
        INSERT INTO detalii_angajati VALUES('dansator',2500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),3);
        INSERT INTO detalii_angajati VALUES('dansator',2500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),4);
        INSERT INTO detalii_angajati VALUES('dansator',2500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),5);
        INSERT INTO detalii_angajati VALUES('dansator',2500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),6);
        INSERT INTO detalii_angajati VALUES('dansator',2500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),7);
        INSERT INTO detalii_angajati VALUES('dansator',2500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),8);
        INSERT INTO detalii_angajati VALUES('dansator',2800,TO_DATE('01.08.2018', 'DD.MM.YYYY'),9);
        INSERT INTO detalii_angajati VALUES('dansator',3500,TO_DATE('01.08.2018', 'DD.MM.YYYY'),10);
        INSERT INTO detalii_angajati VALUES('dansator',2200,TO_DATE('01.08.2018', 'DD.MM.YYYY'),11);
        
        INSERT INTO detalii_spectacole VALUES(1,5000,'Bivolari, Judetul Iasi', TO_DATE('10.08.2019', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(2,6000,'Popricani, Judetul Iasi', TO_DATE('11.09.2019', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(3,2000,'Erbiceni, Judetul Iasi', TO_DATE('12.10.2019', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(4,5000,'Luceafarul, Judetul Iasi', TO_DATE('13.11.2019', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(5,4000,'Casa de cultura Iasi, Judetul Iasi', TO_DATE('14.12.2019', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(6,6000,'Podu Iloaiei, Judetul Iasi', TO_DATE('10.03.2020', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(7,8000,'Erbiceni, Judetul Iasi', TO_DATE('09.04.2020', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(8,3000,'Casa de cultura Iasi, Judetul Iasi', TO_DATE('04.05.2020', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(9,5000,'Bivolari, Judetul Iasi', TO_DATE('24.05.2021', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(10,3500,'Razboieni, Judetul Iasi', TO_DATE('14.06.2021', 'DD.MM.YYYY'));
        INSERT INTO detalii_spectacole VALUES(11,4000,'Erbiceni, Judetul Iasi', TO_DATE('12.07.2021', 'DD.MM.YYYY'));
        
        INSERT INTO participanti_spec VALUES(1,1);
        INSERT INTO participanti_spec VALUES(2,3);
        INSERT INTO participanti_spec VALUES(3,8);
        INSERT INTO participanti_spec VALUES(4,8);
        INSERT INTO participanti_spec VALUES(5,9);
        INSERT INTO participanti_spec VALUES(6,10);
        INSERT INTO participanti_spec VALUES(7,11);
        INSERT INTO participanti_spec VALUES(8,2);
        INSERT INTO participanti_spec VALUES(9,5);
        INSERT INTO participanti_spec VALUES(10,7);
        INSERT INTO participanti_spec VALUES(11,6);
    END tabel_push;
    
    PROCEDURE insertAng(v_id IN angajati.id_angajat%TYPE, v_nume IN angajati.nume%TYPE, v_prenume IN angajati.prenume%TYPE)
    IS
    BEGIN   
        INSERT INTO angajati VALUES(v_id,v_nume,v_prenume);
    END insertAng;
    
    PROCEDURE insertDetalii_spec(v_idSpec IN detalii_spectacole.id_spectacol%TYPE, v_pret IN detalii_spectacole.pret_spectacol%TYPE, v_adresa IN detalii_spectacole.adresa%TYPE, v_participanti IN detalii_spectacole.nr_participanti%TYPE, v_data IN detalii_spectacole.data_spectacol%TYPE)
    IS
    BEGIN
        INSERT INTO detalii_spectacole VALUES(v_idSpec,v_pret,v_adresa,v_participanti,v_data);
    END insertDetalii_spec;
    
    PROCEDURE insertDetalii_ang( v_functie IN detalii_angajati.functie_ocupata%TYPE, v_sal IN detalii_angajati.salariu%TYPE, v_dataAng IN detalii_angajati.data_angajare%Type, 
        v_angId IN detalii_angajati.angajati_id_angajat%TYPE)
    IS
    BEGIN
        INSERT INTO detalii_angajati VALUES(v_functie, v_sal, v_dataAng, v_angId);
    END insertDetalii_ang;
END insert_date;
/