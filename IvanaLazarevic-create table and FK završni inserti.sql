use edunovawp5;

create table Restoran(
idrestoran int not null primary key identity(1,1),
sifra numeric not null,
ime varchar(50) not null,
adresa varchar(150) not null,
oib char(11) not null, 
vrsta varchar(50) null
);

create table Artikl(
idartikl int not null primary key identity(1,1),
sifra int not null,
naziv varchar(100) not null,
vrsta varchar(50) null
);

create table Racun(
idracun int not null primary key identity(1,1),
idrestoran int not null,
datum datetime not null,
brojracuna varchar(50) not null
);

create table StavkeRacuna(
idstavkeracuna int not null primary key identity(1,1),
idracun int not null,
idartikl int not null,
cijena decimal(18,2) null,
kolicina decimal(18,4) null
);


alter table Racun add foreign key (idrestoran) references Restoran(idrestoran);
alter table StavkeRacuna add foreign key (idracun) references Racun(idracun);
alter table StavkeRacuna add foreign key (idartikl) references Artikl(idartikl);

select * from restoran;

insert into restoran(sifra,ime,adresa,oib,vrsta)values
('1','Kod Ivane','Trg Tomislava 22,31000 Osijek','12345678910','Bistro')

select * from artikl;

insert into artikl(sifra,naziv,vrsta)values
('1','Teletina ispod peke','jela po narudžbi')
insert into artikl(sifra,naziv,vrsta)values
('2','Janjetina iz krušne peæi','jela iz krušne piæe')
insert into artikl(sifra,naziv,vrsta)values
('3','Šaran na rašljama','riblji specijaliteti')

select * from racun;

insert into racun(idrestoran,datum,brojracuna)values
(1,'20240616','1/01/1')
insert into racun(idrestoran,datum,brojracuna)values
(1,'20240616','2/01/1')

select * from stavkeracuna;

insert into stavkeracuna(idracun,idartikl,cijena,kolicina)values
(1,1,17.55,3.00)
insert into stavkeracuna(idracun,idartikl,cijena,kolicina)values
(1,2,19.99,2.00)

