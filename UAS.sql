use uas

select * from GDP
-- hapus null dari GDP
delete from GDP
where value is NULL
-- hapus tanggal yang tidak diperlukan dari gdp
delete from GDP 
where period in ('2022-12-31', '2022-09-30', '2022-06-30', '2022-03-31')
-- alter tanggal gdp
UPDATE GDP
SET [Period] = CAST(([Period]) AS DATE)
ALTER TABLE GDP
ALTER COLUMN [Period] Date
-- alter table GDP (delete yang gak perlu)
ALTER TABLE GDP 
drop column [Type ]

ALTER TABLE GDP
drop column [Simple Growth Rate % ]

ALTER TABLE GDP
drop column [Y-o-Y Change % ]

ALTER TABLE GDP
drop column [Annual % Rate ]


-- ganti null jadi 0 untuk close price
select * from CloseP

update CloseP
set FQ12021 = 0
where FQ12021 IS NULL;

update CloseP
set FQ22021 = 0
where FQ22021 IS NULL;

update CloseP
set FQ32021 = 0
where FQ32021 IS NULL;

update CloseP
set FQ42021 = 0
where FQ42021 IS NULL;

-- ganti null untuk Current Assets
UPDATE CAssets
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)

delete from CAssets 
where [Entity Name ] is NULL


-- ganti null untuk Current Liabilities
UPDATE CLiab
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)

delete from CLiab
where [Entity Name ] is NULL

-- ganti null untuk Current Ratio
UPDATE CRatio
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)

delete from CRatio
where [Entity Name ] is NULL

-- ganti null untuk Inventory
UPDATE Inventory
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)

delete from Inventory
where [Entity Name ] is NULL

-- ganti null untuk ROA
UPDATE ROA
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)


-- ganti null untuk Total Assets
UPDATE TAssets
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)

delete from TAssets
where [Entity Name ] is NULL

-- ganti null untuk Total Debt
UPDATE TDebt
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)

delete from TDebt
where [Entity Name ] is NULL

-- ganti null untuk Total Liabilities
UPDATE TLiabilities
set
FQ12010 = ISNULL(FQ12010,0),
FQ22010    = ISNULL(FQ22010,0),
FQ32010    = ISNULL(FQ32010,0),
FQ42010    = ISNULL(FQ42010,0),
FQ12011    = ISNULL(FQ12011,0),
FQ22011    = ISNULL(FQ22011,0),
FQ32011    = ISNULL(FQ32011,0),
FQ42011    = ISNULL(FQ42011,0),
FQ12012    = ISNULL(FQ12012,0),
FQ22012    = ISNULL(FQ22012,0),
FQ32012    = ISNULL(FQ32012,0),
FQ42012    = ISNULL(FQ42012,0),
FQ12013    = ISNULL(FQ12013,0),
FQ22013    = ISNULL(FQ22013,0),
FQ32013    = ISNULL(FQ32013,0),
FQ42013    = ISNULL(FQ42013,0),
FQ12014    = ISNULL(FQ12014,0),
FQ22014    = ISNULL(FQ22014,0), 
FQ32014    = ISNULL(FQ32014,0),
FQ42014    = ISNULL(FQ42014,0),
FQ12015    = ISNULL(FQ12015,0),
FQ22015    = ISNULL(FQ22015,0),
FQ32015    = ISNULL(FQ32015,0),
FQ42015    = ISNULL(FQ42015,0),
FQ12016    = ISNULL(FQ12016,0),
FQ22016    = ISNULL(FQ22016,0),
FQ32016    = ISNULL(FQ32016,0),
FQ42016    = ISNULL(FQ42016,0),
FQ12017    = ISNULL(FQ12017,0),
FQ22017    = ISNULL(FQ22017,0),
FQ32017    = ISNULL(FQ32017,0),
FQ42017    = ISNULL(FQ42017,0),
FQ12018    = ISNULL(FQ12018,0),
FQ22018    = ISNULL(FQ22018,0),
FQ32018    = ISNULL(FQ32018,0),
FQ42018    = ISNULL(FQ42018,0),
FQ12019    = ISNULL(FQ12019,0),
FQ22019    = ISNULL(FQ22019,0),
FQ32019    = ISNULL(FQ32019,0),
FQ42019    = ISNULL(FQ42019,0),
FQ12020    = ISNULL(FQ12020,0),
FQ22020    = ISNULL(FQ22020,0),
FQ32020    = ISNULL(FQ32020,0),
FQ42020    = ISNULL(FQ42020,0),
FQ12021    = ISNULL(FQ12021,0),
FQ22021    = ISNULL(FQ22021,0),
FQ32021 = ISNULL(FQ32021,0),
FQ42021 = ISNULL(FQ42021,0)

delete from TLiabilities
where [Entity Name ] is NULL


-- unpivot semua variabel nya
-- ini untuk current ratio
create procedure unpivot_cr
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, CurrentRatio
		from CRatio
		unpivot
		(
			CurrentRatio for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt
	order by Periode
END

exec unpivot_cr

-- ini untuk current asset
create procedure unpivot_ca
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, CurrentAsset
		from CAssets
		unpivot
		(
			CurrentAsset for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt2
	order by Periode
END

exec unpivot_ca

-- ini untuk inventories
create procedure unpivot_inv
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, Inventories
		from Inventory
		unpivot
		(
			Inventories for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt3
	order by Periode
END

exec unpivot_inv

-- ini untuk current liabilities
create procedure unpivot_cl
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, CurrentLiab
		from CLiab
		unpivot
		(
			CurrentLiab for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt4
	order by Periode
END

exec unpivot_cl

-- ini untuk total debt
create procedure unpivot_td
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, TotalDebt
		from TDebt
		unpivot
		(
			TotalDebt for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt5
	order by Periode
END

exec unpivot_td

-- ini untuk total liabilities
create procedure unpivot_tl
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, TotalLiab
		from TLiabilities
		unpivot
		(
			TotalLiab for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt6
	order by Periode
END

exec unpivot_tl

-- ini untuk total asset
create procedure unpivot_ta
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, TotalAssets
		from TAssets
		unpivot
		(
			TotalAssets for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt7
	order by Periode
END

exec unpivot_ta

-- ini untuk close price
create procedure unpivot_cp
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, ClosePrice
		from CloseP
		unpivot
		(
			ClosePrice for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt8
	order by Periode
END

exec unpivot_cp

-- ini untuk ROA
create procedure unpivot_roa
as 
BEGIN
	set nocount on
	select [Entity Name ], [Entity ID ], [Ticker ], Periode, ROAssets
		from ROA
		unpivot
		(
			ROAssets for Periode in (FQ12010, FQ22010,FQ32010,FQ42010,
									FQ12011, FQ22011, FQ32011, FQ42011,
									FQ12012, FQ22012, FQ32012, FQ42012,
									FQ12013, FQ22013, FQ32013, FQ42013,
									FQ12014, FQ22014, FQ32014, FQ42014,
									FQ12015, FQ22015, FQ32015, FQ42015,
									FQ12016, FQ22016, FQ32016, FQ42016,
									FQ12017, FQ22017, FQ32017, FQ42017,
									FQ12018, FQ22018, FQ32018, FQ42018,
									FQ12019, FQ22019, FQ32019, FQ42019,
									FQ12020, FQ22020, FQ32020, FQ42020,
									FQ12021, FQ22021, FQ32021, FQ42021)
		) as unpvt9
	order by Periode
END

exec unpivot_roa


-- insert stored procedure ke temp table

-- Current Assets
create table #CA (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
CurrentAssets float
)

insert into #CA
exec unpivot_ca

select * from #CA

-- Current Liabilities
create table #CL (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
CurrentLiab float
)

insert into #CL
exec unpivot_cl

-- Close Price
create table #CP (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
ClosePrice float
)

insert into #CP
exec unpivot_cp
select * from #CP

-- Current Ratio
create table CR_result (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
CurrentRatio float
)

insert into CR_result
exec unpivot_cr

select * from CR_result


-- Inventory
create table #Inv (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
Inventory float
)

insert into #Inv
exec unpivot_inv

-- ROA
create table ROA_result (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
ROA float
)


insert into ROA_result
exec unpivot_roa

select * from ROA_result

-- Total Assets
create table #TAssets (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
TotalAssets float
)

insert into #TAssets
exec unpivot_ta

select * from #TAssets


-- Total Debt
create table #TD (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
TotalDebt float
)

insert into #TD
exec unpivot_td


-- Total Liabilities
create table #TL (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
TotalLiab float
)

insert into #TL
exec unpivot_tl



-- bikin table gabungan mereka
-- TDTL
create table #TDTL(
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Periode varchar(255),
TL float,
TD float
)

insert into #TDTL(EntityName, EntityID, Ticker, Periode, TL, TD)
select a.EntityName, a.EntityID, a.Ticker, a.Period, a.TotalLiab, b.TotalDebt
from #TL a
inner join #TD b on a.EntityName = b.EntityName and a.EntityID = b.EntityID and a.Ticker = b.Ticker and a.Period = b.Period

select * from #TDTL
order by Periode

-- QACL  + QATA
create table #QACLTA(
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Periode varchar(255),
CA float,
I float,
CL float, 
TA float
)

SELECT * FROM #CA
SELECT * FROM #Inv
SELECT * FROM #CL
SELECT * FROM #TAssets

insert into #QACLTA(EntityName, EntityID, Ticker, Periode, CA, I, CL, TA)
select a.EntityName, a.EntityID, a.Ticker, a.Period, a.CurrentAssets, b.Inventory, c.CurrentLiab, d.TotalAssets
from #CA a
inner join #Inv b on a.EntityName = b.EntityName and a.EntityID = b.EntityID and a.Ticker = b.Ticker and a.Period = b.Period
inner join #CL c on b.EntityName = c.EntityName and b.EntityID = c.EntityID and b.Ticker = c.Ticker and b.Period = c.Period
inner join #TAssets d on c.EntityName = d.EntityName and c.EntityID = d.EntityID and c.Ticker = d.Ticker and c.Period = d.Period

SELECT * FROM #QACLTA


-- ini perhitungannya buat masing-masing variabel x
-- CR
select * from CR_result

-- QACL
create procedure QACL
as
BEGIN
select EntityName, EntityID, Ticker, Periode, ISNULL(((CA-I)/NULLIF(CL,0)),0) as QACL
from #QACLTA
END

exec QACL

create table QACL_result (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
QACL float
)

insert into QACL_result
exec QACL

select * from QACL_result

-- TDTL
create procedure TDTL
as
BEGIN
SELECT EntityName, EntityID, Ticker, Periode, ISNULL((TD/NULLIF(TL,0)),0) as TDTL 
from #TDTL
END

exec TDTL

create table TDTL_result (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
TDTL float
)

insert into TDTL_result
exec TDTL

select * from TDTL_result

-- QATA
create procedure QATA
as
BEGIN
select EntityName, EntityID, Ticker, Periode, ISNULL(((CA-I)/NULLIF(TA,0)),0) as QATA
from #QACLTA
END

exec QATA

create table QATA_result (
EntityName varchar(255),
EntityID float,
Ticker varchar(255),
Period varchar(255),
QATA float
)

insert into QATA_result
exec QATA

select * from QATA_result

-- return CP
delete from #CP
wehere EntityName is NULL

select * from #CP

create table CP_result(
Ticker varchar(50),
Period varchar(50),
r_CP float
)

WITH cteRank AS( 
	SELECT Ticker, ClosePrice, Period, 
	ROW_NUMBER() over(order by Period) AS RowNum
	from #CP
	)

INSERT INTO CP_result
select c1.Ticker, c1.Period, ISNULL(((c2.ClosePrice - c1.ClosePrice)/NULLIF(c1.ClosePrice,0)),0) as r_CP
from cteRank c1
	inner join cteRank c2
	on c1.RowNum - 1 = c2.RowNum
where c1.RowNum > 1

select * from CP_result

-- return GDP
-- update GDP agar terdapat periode
select * from GDP

CREATE TABLE #GDP(
    Tanggal date,
	Bulan int,
	GDP float,
	Periode varchar(50)
)

INSERT INTO #GDP
SELECT Period as Tanggal, Month(Period) as Bulan, Value as GDP,
    CASE
        WHEN MONTH(Period) BETWEEN 1 AND 3 THEN 'FQ1' + CONVERT(char(4), YEAR(Period))
        WHEN MONTH(Period) BETWEEN 4  AND 6  THEN 'FQ2' + CONVERT(char(4), YEAR(Period)) 
        WHEN MONTH(Period) BETWEEN 7  AND 9  THEN 'FQ3' + CONVERT(char(4), YEAR(Period))  
        WHEN MONTH(Period) BETWEEN 10 AND 12 THEN 'FQ4' + CONVERT(char(4), YEAR(Period)) 
    END AS Periode
from GDP

select * from #GDP

create table r_GDP(
Tanggal date,
Bulan int,
Period varchar(50),
r_GDP float
)

WITH cteRank AS( 
	SELECT Tanggal, GDP, Periode, Bulan, 
	ROW_NUMBER() over(order by Tanggal) AS RowNum
	from #GDP
	)

INSERT INTO r_GDP
select c1.Tanggal, c1.Bulan, c1.Periode, ((c2.GDP - c1.GDP)/c1.GDP) as r_GDP
from cteRank c1
	inner join cteRank c2
	on c1.RowNum - 1 = c2.RowNum
where c1.RowNum > 1

select * from r_GDP


-- join semua
select * from ROA_result
SELECT * FROM CR_result
SELECT * FROM QACL_result
SELECT * FROM TDTL_result
SELECT * FROM QATA_result
select * from CP_result
select * from r_GDP
 

select a.ticker, a.period, a. ROA, b.CurrentRatio, c.QACL, d.TDTL, e.QATA, f.r_CP, g.r_GDP
from ROA_result a
inner join CR_result b on a.Ticker = b.Ticker and a.period = b. period
inner join QACL_result c on  a.Ticker = c.Ticker and a.Period = c.Period
inner join TDTL_result d on  a.Ticker = d.Ticker and a.Period = d.Period
inner join QATA_result e on  a.Ticker = e.Ticker and a.Period = e.Period
inner join CP_result f on a.Ticker = f.Ticker and a.Period = f.Period
inner join r_GDP g on a.Period = g.Period
order by Ticker, Period
