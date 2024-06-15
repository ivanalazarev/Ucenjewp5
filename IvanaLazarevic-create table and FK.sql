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