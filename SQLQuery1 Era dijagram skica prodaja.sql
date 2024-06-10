use edunovawp5;
create table restoran(
sifra int,
ime varchar(50),
adresa varchar(50),
oib char(11),
vrsta varchar

);

use edunovawp5;
create table racun(
sifra int,
datumracuna int,
brojracuna int
);

use edunovawp5;
create table artikl(
sifra int,
naziv varchar(50),
vrsta varchar(50),
cijena decimal(15,2)
);

use edunovawp5;
create table stavke(
prodaja int,
artikl varchar,
kolièina int
);