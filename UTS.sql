use uts

select * from CPQuarter

select * from LogMC

select * from mcquarter

select * from ROAA

select * from spta

select * from djiaq

select * from importsquarter

-- isi dari category
insert into category
select [Ticker ], 'FQ42021', FQ42021
from ROAA

insert into category
select [Ticker ], 'FQ32021', FQ32021
from ROAA

insert into category
select [Ticker ], 'FQ22021', FQ22021
from ROAA

insert into category
select [Ticker ], 'FQ12021', FQ12021
from ROAA

insert into category
select [Ticker ], 'FQ42020', FQ42020
from ROAA

insert into category
select [Ticker ], 'FQ32020', FQ42020
from ROAA

insert into category
select [Ticker ], 'FQ22020', FQ42020
from ROAA

insert into category
select [Ticker ], 'FQ12020', FQ12020
from ROAA

select * from Category

select periode, count([Ticker ]) total
from Category
group by periode
order by periode
----

--- isi dari ROA
insert into ROA
select [Ticker ], 'FQ42021', FQ42021
from ROAA

insert into ROA
select [Ticker ], 'FQ32021', FQ32021
from ROAA

insert into ROA
select [Ticker ], 'FQ22021', FQ22021
from ROAA

insert into ROA
select [Ticker ], 'FQ12021', FQ12021
from ROAA

insert into ROA
select [Ticker ], 'FQ42020', FQ42020
from ROAA

insert into ROA
select [Ticker ], 'FQ32020', FQ42020
from ROAA

insert into ROA
select [Ticker ], 'FQ22020', FQ42020
from ROAA

insert into ROA
select [Ticker ], 'FQ12020', FQ12020
from ROAA

select * from ROA
where ROAA = 0
----

--- Isi dari R_CP
insert into R_CP
select [Ticker ], 'FQ42021', FQ42021
from CPQuarter

insert into R_CP
select [Ticker ], 'FQ32021', FQ32021
from CPQuarter

insert into R_CP
select [Ticker ], 'FQ22021', FQ22021
from CPQuarter

insert into R_CP
select [Ticker ], 'FQ12021', FQ12021
from CPQuarter

insert into R_CP
select [Ticker ], 'FQ42020', FQ42020
from CPQuarter

insert into R_CP
select [Ticker ], 'FQ32020', FQ42020
from CPQuarter

insert into R_CP
select [Ticker ], 'FQ22020', FQ42020
from CPQuarter

insert into R_CP
select [Ticker ], 'FQ12020', FQ12020
from CPQuarter

select * from R_CP
----


--- isi dari R_TA
insert into R_TA
select [Ticker ], 'FQ42021', FQ42021
from SPTA

insert into R_TA
select [Ticker ], 'FQ32021', FQ32021
from SPTA

insert into R_TA
select [Ticker ], 'FQ22021', FQ22021
from SPTA

insert into R_TA
select [Ticker ], 'FQ12021', FQ12021
from SPTA

insert into R_TA
select [Ticker ], 'FQ42020', FQ42020
from SPTA

insert into R_TA
select [Ticker ], 'FQ32020', FQ42020
from SPTA

insert into R_TA
select [Ticker ], 'FQ22020', FQ42020
from SPTA

insert into R_TA
select [Ticker ], 'FQ12020', FQ12020
from SPTA

----


--- isi dari log_MC
insert into log_MC
select [Ticker ], 'FQ42021', FQ42021
from LogMC

insert into log_MC
select [Ticker ], 'FQ32021', FQ32021
from LogMC

insert into log_MC
select [Ticker ], 'FQ22021', FQ22021
from LogMC

insert into log_MC
select [Ticker ], 'FQ12021', FQ12021
from LogMC

insert into log_MC
select [Ticker ], 'FQ42020', FQ42020
from LogMC

insert into log_MC
select [Ticker ], 'FQ32020', FQ42020
from LogMC

insert into log_MC
select [Ticker ], 'FQ22020', FQ42020
from LogMC

insert into log_MC
select [Ticker ], 'FQ12020', FQ12020
from LogMC
----

select * from djiaq

---- isi dari DJI
insert into DJIQ
select [Ticker ], 'FQ42021', FQ42021
from djiaq

insert into DJIQ
select [Ticker ], 'FQ32021', FQ32021
from djiaq

insert into DJIQ
select [Ticker ], 'FQ22021', FQ22021
from djiaq

insert into DJIQ
select [Ticker ], 'FQ12021', FQ12021
from djiaq

insert into DJIQ
select [Ticker ], 'FQ42020', FQ42020
from djiaq

insert into DJIQ
select [Ticker ], 'FQ32020', FQ42020
from djiaq

insert into DJIQ
select [Ticker ], 'FQ22020', FQ42020
from djiaq

insert into DJIQ
select [Ticker ], 'FQ12020', FQ12020
from djiaq
---

select * from DJIQ

---- isi dari Import
insert into Imports
select [Ticker ], 'FQ42021', FQ42021
from importsquarter

insert into imports
select [Ticker ], 'FQ32021', FQ32021
from importsquarter

insert into imports
select [Ticker ], 'FQ22021', FQ22021
from importsquarter

insert into imports
select [Ticker ], 'FQ12021', FQ12021
from importsquarter

insert into imports
select [Ticker ], 'FQ42020', FQ42020
from importsquarter

insert into imports
select [Ticker ], 'FQ32020', FQ42020
from importsquarter

insert into imports
select [Ticker ], 'FQ22020', FQ42020
from importsquarter

insert into imports
select [Ticker ], 'FQ12020', FQ12020
from importsquarter

select * from imports
----

select * from ROA
select * from R_CP
select * from R_TA
select * from log_MC

select a.ticker, a.periode, a.ROAA, b.R_CP, c.DJI, f.Imports, d.R_TA, e.log_MC
from ROA a inner join R_CP b on a.ticker = b.ticker -- pake and a.Periode = b.Periode juga disini
inner join R_TA d on a.ticker = d.ticker
inner join log_MC e on a.ticker = e.ticker
inner join DJIQ c on a.ticker = c.ticker
inner join Imports f on a.ticker = f.ticker
order by a.periode

select count(*) from (
select a.ticker, a.periode, a.ROAA, b.R_CP, c.DJI, f.Imports, d.R_TA, e.log_MC
from ROA a inner join R_CP b on a.ticker = b.ticker -- pake and a.Periode = b.Periode juga disini
inner join R_TA d on a.ticker = d.ticker
inner join log_MC e on a.ticker = e.ticker
inner join DJIQ c on a.ticker = c.ticker
inner join Imports f on a.ticker = f.ticker
) c


select 'FQ42021' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ42021 as ROA
from ROAA a
union all
select 'FQ32021' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ32021 as ROA
from ROAA a
UNION ALL
select 'FQ22021' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ22021 as ROA
from ROAA a
union all
select 'FQ12021' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ12021 as ROA
from ROAA a
union all
select 'FQ42020' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ42020 as ROA
from ROAA a
union all
select 'FQ32020' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ32020 as ROA
from ROAA a
UNION ALL
select 'FQ22020' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ22020 as ROA
from ROAA a
union all
select 'FQ12020' Category, a.[Entity Name ], a.[Entity ID ], a.[Ticker ], a.FQ12020 as ROA
from ROAA a


select 'FQ42021' Category, b.[Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ42020 as R_CP
from CPQuarter b
union all
select 'FQ32021' Category, b. [Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ32020 as R_CP
from CPQuarter b
union all
select 'FQ22021' Category, b. [Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ22020 as R_CP 
from CPQuarter b
union all 
select 'FQ12021' Category, b.[Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ12020 as R_CP
from CPQuarter b
union all
select 'FQ42020' Category, b.[Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ42020 as R_CP
from CPQuarter b
union all
select 'FQ32020' Category, b. [Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ32020 as R_CP
from CPQuarter b
union all
select 'FQ22020' Category, b. [Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ22020 as R_CP 
from CPQuarter b
union all 
select 'FQ12020' Category, b.[Entity Name ], b.[Entity ID ], b.[Ticker ], b.FQ12020 as R_CP
from CPQuarter b

select a.[Entity Name ], a.[Entity ID ], a.[Ticker ], 'FQ42021' Category, a.FQ42021 ROA, b.FQ42021 R_CP, d.FQ42021 R_TA, e.FQ42021 Log_MC 
from ROAA a inner join CPQuarter b on a.[Ticker ] = b.[Ticker ]
inner join SPTA d on b.[Ticker ] = d.[Ticker ]
inner join LogMC e on d.[Ticker ] = e.[Ticker ]


select 'FQ42021' Category, c.FQ42021 as DJI
from DJIAQuarter c
union all
select 'FQ32021' category, c.Fq32021 as DJI
from DJIAQuarter c
union all
select 'FQ22021' Category, c.FQ22021 as DJI
from DJIAQuarter c
union all
select 'FQ12021' Category, c.FQ12021 as DJI
from DJIAQuarter c
union all
select 'FQ42020' Category, c.FQ42020 as DJI
from DJIAQuarter c
union all
select 'FQ32020' Category, c.FQ32020 as DJI
from DJIAQuarter c
union all
select 'FQ22020' Category, c.FQ22020 as DJI 
from DJIAQuarter c
union all 
select 'FQ12020' Category, c.FQ12020 as DJI
from DJIAQuarter c


select 'FQ42021' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ42021 as R_TA
from SPTA d
union all
select 'FQ32021' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ32021 as R_TA
from SPTA d
UNION ALL
select 'FQ22021' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ22021 as R_TA
from SPTA d
union all
select 'FQ12021' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ12021 as R_TA 
from SPTA d
union all
select 'FQ42020' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ42020 as R_TA
from SPTA d
union all
select 'FQ32020' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ32020 as R_TA
from SPTA d
UNION ALL
select 'FQ22020' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ22020 as R_TA
from SPTA d
union all
select 'FQ120210' Category, d.[Entity Name ], d.[Entity ID ], d.[Ticker ], d.FQ12020 as R_TA 
from SPTA d


select 'FQ42021' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ42021 as log_MC
from LogMC e
union all
select 'FQ32021' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ32021 as log_MC 
from LogMC e
union all
select 'FQ22021' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ22021 as log_MC
from LogMC e
union all
select 'FQ12021' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ12021 as log_MC
from LogMC e
union all
select 'FQ42020' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ42020 as log_MC
from LogMC e
union all
select 'FQ32020' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ32020 as log_MC 
from LogMC e
union all
select 'FQ22020' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ22020 as log_MC
from LogMC e
union all
select 'FQ12020' Category, e.[Entity Name ], e.[Entity ID ], e.[Ticker ], e.FQ12020 as log_MC
from LogMC e


select 'FQ42021' Category, f.FQ42021 as Import
from Importq f
union all
select 'FQ32021' category, f.Fq32021 as Import
from Importq f
union all
select 'FQ22021' Category, f.FQ22021 as Import
from Importq f
union all
select 'FQ12021' Category, f.FQ12021 as Import
from Importq f
union all
select 'FQ42020' Category, f.FQ42020 as Import
from Importq f
union all
select 'FQ32020' Category, f.FQ32020 as Import
from Importq f
union all
select 'FQ22020' Category, f.FQ22020 as Import
from Importq f
union all 
select 'FQ12020' Category, f.FQ12020 as Import
from Importq f