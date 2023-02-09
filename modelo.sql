create table temporal (
    year int,
    max_water_height varchar(100),
    total_deaths varchar(100),
    total_damage varchar(100),
    total_houses_destroyed varchar(100),
    total_houses_damaged varchar(100),
    country varchar(100),
);

create table pais (
    id int identity constraint city_pk primary key,
    pais varchar(100),
);

create table fecha (
    id int identity constraint fecha_pk primary key,
    year int,
);

create table tsunami (
    id int identity constraint tsunami_pk primary key,
    max_water_height decimal,
    total_deaths int,
    total_damage decimal,
    total_houses_destroyed int,
    total_houses_damaged int,
    id_pais int not null,
    id_fecha int not null
);

ALTER TABLE
    tsunami
ADD
    CONSTRAINT tsunami_pais_FK FOREIGN KEY (id_pais) REFERENCES pais (id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE
    tsunami
ADD
    CONSTRAINT tsunami_fecha_FK FOREIGN KEY (id_fecha) REFERENCES fecha (id) ON DELETE NO ACTION ON UPDATE NO ACTION;