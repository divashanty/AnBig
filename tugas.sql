use tugas

-- buat CACL
create procedure CACL2015
as
BEGIN
set nocount on
select
    case [CL FY2015]
        WHEN 0 THEN 0
        ELSE CAST([CA FY2015] AS DECIMAL)/[CL FY2015]
    END as CACL2015
FROM semua
END

CACL2015


create procedure CACL2016
as
BEGIN
set nocount on
select
    case [CL FY2016]
        WHEN 0 THEN 0
        ELSE CAST([CA FY2016] AS DECIMAL)/[CL FY2016]
    END as CACL2016
FROM semua
END
CACL2016

create procedure CACL2017
as
BEGIN
set nocount on
select
    case [CL FY2017]
        WHEN 0 THEN 0
        ELSE CAST([CA FY2017] AS DECIMAL)/[CL FY2017]
    END as CACL2017
FROM semua
END

create procedure CACL2018
as
BEGIN
set nocount on
select
    case [CL FY2018]
        WHEN 0 THEN 0
        ELSE CAST([CA FY2018] AS DECIMAL)/[CL FY2018]
    END as CACL2018
FROM semua
END

create procedure CACL2019
as
BEGIN
set nocount on
select
    case [CL FY2019]
        WHEN 0 THEN 0
        ELSE CAST([CA FY2019] AS DECIMAL)/[CL FY2019]
    END as CACL2019
FROM semua
END

create procedure CACL2020
as
BEGIN
set nocount on
select
    case [CL FY2020]
        WHEN 0 THEN 0
        ELSE CAST([CA FY2020] AS DECIMAL)/[CL FY2020]
    END as CACL2020
FROM semua
END

create procedure CACL2021
as
BEGIN
set nocount on
select
    case [CL FY2021]
        WHEN 0 THEN 0
        ELSE CAST([CA FY2021] AS DECIMAL)/[CL FY2021]
    END as CACL2021
FROM semua
END

create table CACL
(
	EntityName varchar(50),
	EntityID varchar(20),
	FY2021 float,
	FY2020 float,
	FY2019 float,
	FY2018 float,
	FY2017 float,
	FY2016 float,
	FY2015 float
)

CACL2015

insert into CACL(FY2015)
exec CACL2015

select * from CACL

CACL2016
CACL2020

insert into CACL(FY2016)
exec CACL2016

insert into CACL(FY2017)
exec CACL2017
insert into CACL(FY2018)
exec CACL2018
insert into CACL(FY2019)
exec CACL2019
insert into CACL(FY2020)
exec CACL2020
insert into CACL(FY2021)
exec CACL2021

select * from CACL


-- buat wtca
select * from WCTA


-- buat CCL
select
    case [CL FY2015]
        WHEN 0 THEN 0
        ELSE CAST([Cash FY2015] AS DECIMAL)/[CL FY2015]
    END as CCL2015
FROM semua

select
    case [CL FY2016]
        WHEN 0 THEN 0
        ELSE CAST([Cash FY2016] AS DECIMAL)/[CL FY2016]
    END as CCL2016
FROM semua

select
    case [CL FY2017]
        WHEN 0 THEN 0
        ELSE CAST([Cash FY2017] AS DECIMAL)/[CL FY2017]
    END as CCL2017
FROM semua

select
    case [CL FY2018]
        WHEN 0 THEN 0
        ELSE CAST([Cash FY2018] AS DECIMAL)/[CL FY2018]
    END as CCL2018
FROM semua

select
    case [CL FY2019]
        WHEN 0 THEN 0
        ELSE CAST([Cash FY2019] AS DECIMAL)/[CL FY2019]
    END as CCL2019
FROM semua

select
    case [CL FY2020]
        WHEN 0 THEN 0
        ELSE CAST([Cash FY2020] AS DECIMAL)/[CL FY2020]
    END as CCL2020
FROM semua

select
    case [CL FY2021]
        WHEN 0 THEN 0
        ELSE CAST([Cash FY2021] AS DECIMAL)/[CL FY2021]
    END as CCL2021
FROM semua


-- buat TDTE
select
    case [TE FY2015]
        WHEN 0 THEN 0
        ELSE CAST([TD FY2015] AS DECIMAL)/[TE FY2015]
    END as TDTE2015
FROM semua

select
    case [TE FY2016]
        WHEN 0 THEN 0
        ELSE CAST([TD FY2016] AS DECIMAL)/[TE FY2016]
    END as TDTE2016
FROM semua

select
    case [TE FY2017]
        WHEN 0 THEN 0
        ELSE CAST([TD FY2017] AS DECIMAL)/[TE FY2017]
    END as TDTE2017
FROM semua

select
    case [TE FY2018]
        WHEN 0 THEN 0
        ELSE CAST([TD FY2018] AS DECIMAL)/[TE FY2018]
    END as TDTE2018
FROM semua

select
    case [TE FY2019]
        WHEN 0 THEN 0
        ELSE CAST([TD FY2019] AS DECIMAL)/[TE FY2019]
    END as TDTE2019
FROM semua

select
    case [TE FY2020]
        WHEN 0 THEN 0
        ELSE CAST([TD FY2020] AS DECIMAL)/[TE FY2020]
    END as TDTE2020
FROM semua

select
    case [TE FY2021]
        WHEN 0 THEN 0
        ELSE CAST([TD FY2021] AS DECIMAL)/[TE FY2021]
    END as TDTE2021
FROM semua


-- buat MVEBVD
select
    case [TA FY2015]
        WHEN 0 THEN 0
        ELSE CAST([MC FY2015] AS DECIMAL)/([TD FY2015]+[TA FY2015])
    END as MVEBVD2015
FROM semua

select
    case [TA FY2016]
        WHEN 0 THEN 0
        ELSE CAST([MC FY2016] AS DECIMAL)/([TD FY2016]+[TA FY2016])
    END as MVEBVD2016
FROM semua

select
    case [TA FY2017]
        WHEN 0 THEN 0
        ELSE CAST([MC FY2017] AS DECIMAL)/([TD FY2017]+[TA FY2017])
    END as MVEBVD2017
FROM semua

select
    case [TA FY2018]
        WHEN 0 THEN 0
        ELSE CAST([MC FY2018] AS DECIMAL)/([TD FY2018]+[TA FY2018])
    END as MVEBVD2018
FROM semua

select
    case [TA FY2019]
        WHEN 0 THEN 0
        ELSE CAST([MC FY2019] AS DECIMAL)/([TD FY2019]+[TA FY2019])
    END as MVEBVD2019
FROM semua

select
    case [TA FY2020]
        WHEN 0 THEN 0
        ELSE CAST([MC FY2020] AS DECIMAL)/([TD FY2020]+[TA FY2020])
    END as MVEBVD2020
FROM semua

select
    case [TA FY2021]
        WHEN 0 THEN 0
        ELSE CAST([MC FY2021] AS DECIMAL)/([TD FY2021]+[TA FY2021])
    END as MVEBVD2021
FROM semua


-- buat EBITI
select
    case [I FY2015]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2015] AS DECIMAL)/[I FY2015]
    END as EBITI2015
FROM semua

select
    case [I FY2016]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2016] AS DECIMAL)/[I FY2016]
    END as EBITI2016
FROM semua

select
    case [I FY2017]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2017] AS DECIMAL)/[I FY2017]
    END as EBITI2017
FROM semua

select
    case [I FY2018]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2018] AS DECIMAL)/[I FY2018]
    END as EBITI2018
FROM semua

select
    case [I FY2019]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2019] AS DECIMAL)/[I FY2019]
    END as EBITI2019
FROM semua

select
    case [I FY2020]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2020] AS DECIMAL)/[I FY2020]
    END as EBITI2020
FROM semua

select
    case [I FY2021]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2021] AS DECIMAL)/[I FY2021]
    END as EBITI2021
FROM semua


-- buat RETA
select * from RETA


-- buat NIS
select
    case [Sales FY2015]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2015] AS DECIMAL)/[Sales FY2015]
    END as NIS2015
FROM semua

select
    case [Sales FY2016]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2016] AS DECIMAL)/[Sales FY2016]
    END as NIS2016
FROM semua

select
    case [Sales FY2017]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2017] AS DECIMAL)/[Sales FY2017]
    END as NIS2017
FROM semua

select
    case [Sales FY2018]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2018] AS DECIMAL)/[Sales FY2018]
    END as NIS2018
FROM semua

select
    case [Sales FY2019]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2019] AS DECIMAL)/[Sales FY2019]
    END as NIS2019
FROM semua

select
    case [Sales FY2020]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2020] AS DECIMAL)/[Sales FY2020]
    END as NIS2020
FROM semua

select
    case [Sales FY2021]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2021] AS DECIMAL)/[Sales FY2021]
    END as NIS2021
FROM semua


-- buat NITA
select
    case [TA FY2015]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2015] AS DECIMAL)/[TA FY2015]
    END as NITA2015
FROM semua

select
    case [TA FY2016]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2016] AS DECIMAL)/[TA FY2016]
    END as NITA2016
FROM semua

select
    case [TA FY2017]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2017] AS DECIMAL)/[TA FY2017]
    END as NITA2017
FROM semua

select
    case [TA FY2018]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2018] AS DECIMAL)/[TA FY2018]
    END as NITA2018
FROM semua

select
    case [TA FY2019]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2019] AS DECIMAL)/[TA FY2019]
    END as NITA2019
FROM semua

select
    case [TA FY2020]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2020] AS DECIMAL)/[TA FY2020]
    END as NITA2020
FROM semua

select
    case [TA FY2021]
        WHEN 0 THEN 0
        ELSE CAST([NI FY2021] AS DECIMAL)/[TA FY2021]
    END as NITA2021
FROM semua


-- buat STA
select
    case [TA FY2015]
        WHEN 0 THEN 0
        ELSE CAST([Sales FY2015] AS DECIMAL)/[TA FY2015]
    END as STA2015
FROM semua

select
    case [TA FY2016]
        WHEN 0 THEN 0
        ELSE CAST([Sales FY2016] AS DECIMAL)/[TA FY2016]
    END as STA2016
FROM semua

select
    case [TA FY2017]
        WHEN 0 THEN 0
        ELSE CAST([Sales FY2017] AS DECIMAL)/[TA FY2017]
    END as STA2017
FROM semua

select
    case [TA FY2018]
        WHEN 0 THEN 0
        ELSE CAST([Sales FY2018] AS DECIMAL)/[TA FY2018]
    END as STA2018
FROM semua

select
    case [TA FY2019]
        WHEN 0 THEN 0
        ELSE CAST([Sales FY2019] AS DECIMAL)/[TA FY2019]
    END as STA2019
FROM semua

select
    case [TA FY2020]
        WHEN 0 THEN 0
        ELSE CAST([Sales FY2020] AS DECIMAL)/[TA FY2020]
    END as STA2020
FROM semua

select
    case [TA FY2021]
        WHEN 0 THEN 0
        ELSE CAST([Sales FY2021] AS DECIMAL)/[TA FY2021]
    END as STA2021
FROM semua


-- EBIITA
select
    case [TA FY2015]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2015] AS DECIMAL)/[TA FY2015]
    END as EBITTA2015
FROM semua

select
    case [TA FY2016]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2016] AS DECIMAL)/[TA FY2016]
    END as EBITTA2016
FROM semua

select
    case [TA FY2017]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2017] AS DECIMAL)/[TA FY2017]
    END as EBITTA2017
FROM semua

select
    case [TA FY2018]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2018] AS DECIMAL)/[TA FY2018]
    END as EBITTA2018
FROM semua

select
    case [TA FY2019]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2019] AS DECIMAL)/[TA FY2019]
    END as EBITTA2019
FROM semua

select
    case [TA FY2020]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2020] AS DECIMAL)/[TA FY2020]
    END as EBITTA2020
FROM semua

select
    case [TA FY2021]
        WHEN 0 THEN 0
        ELSE CAST([EBIT FY2021] AS DECIMAL)/[TA FY2021]
    END as EBITTA2021
FROM semua