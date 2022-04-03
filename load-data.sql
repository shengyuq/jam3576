create table IF NOT EXISTS sales(
	salesid integer not null,
	listid integer not null,
	sellerid integer not null,
	buyerid integer not null,
	eventid integer not null,
	dateid smallint not null,
	qtysold smallint not null,
	pricepaid decimal(8,2),
	commission decimal(8,2),
	saletime timestamp);


insert into sales values
    (1,1,36861,21191,7872,1875,4,728,109.2,to_timestamp('2/18/2008 02:36:48', 'MM/DD/YYYY HH:MI:SS')),
    (2,4,8117,11498,4337,1983,2,76,11.4,to_timestamp('6/6/2008 05:00:16', 'MM/DD/YYYY HH:MI:SS')),
    (3,5,1616,17433,8647,1983,2,350,52.5,to_timestamp('6/6/2008 08:26:17', 'MM/DD/YYYY HH:MI:SS')),
    (4,5,1616,19715,8647,1986,1,175,26.25,to_timestamp('6/9/2008 08:38:52', 'MM/DD/YYYY HH:MI:SS')),
    (5,6,47402,14115,8240,2069,2,154,23.1,to_timestamp('8/31/2008 09:17:02', 'MM/DD/YYYY HH:MI:SS')),
    (6,10,24858,24888,3375,2023,2,394,59.1,to_timestamp('7/16/2008 11:59:24', 'MM/DD/YYYY HH:MI:SS')),
    (7,10,24858,7952,3375,2003,4,788,118.2,to_timestamp('6/26/2008 12:56:06', 'MM/DD/YYYY HH:MI:SS')),
    (8,10,24858,19715,3375,2017,1,197,29.55,to_timestamp('7/10/2008 02:12:36', 'MM/DD/YYYY HH:MI:SS')),
    (9,10,24858,29891,3375,2029,3,591,88.65,to_timestamp('7/22/2008 02:23:17', 'MM/DD/YYYY HH:MI:SS')),
    (10,12,45635,10542,4769,2044,1,65,9.75,to_timestamp('8/6/2008 02:51:55', 'MM/DD/YYYY HH:MI:SS'));