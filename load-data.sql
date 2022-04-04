create schema if not exists sales;

create table if not exists sales.users(
    userid integer not null,
    username char(8),
    firstname varchar(30),
    lastname varchar(30));

create table if not exists sales.listing(
    listid integer not null distkey,
    sellerid integer not null,
    numitems smallint not null,
    priceperitem decimal(8,2),
    totalprice decimal(8,2),
    listtime timestamp);    

create table if not exists sales.product_sales(
	salesid integer not null,
	listid integer not null,
	sellerid integer not null,
	buyerid integer not null,
	qtysold smallint not null,
	pricepaid decimal(8,2),
	commission decimal(8,2),
	saletime timestamp);

insert into sales.users values
	(500,'XEH66GYQ','Ashton','Summers'),
	(501,'VSW35TEJ','Ima','Downs'),
	(502,'NZE66TNI','Halee','Madden'),
	(503,'EKJ54VAT','Alexander','Alford'),
	(504,'EKP28LER','Dacey','Newton'),
	(505,'XBG36OHA','Rana','Suarez'),
	(506,'ZGA58XDK','Beck','Park'),
	(507,'WUH51RSF','Shaeleigh','Dejesus'),
	(508,'EWB64HEO','William','Gill'),
	(509,'BWV25SNA','Chancellor','Odonnell'),
	(510,'IUO60YCE','Hiram','Duffy'),
	(511,'QCX65NBK','Yvette','Harmon'),
	(512,'YZO27XRQ','Tara','Parker'),
	(513,'OIJ90WCS','Kerry','English'),
	(514,'ONW52QOZ','Jeremy','Moon'),
	(515,'OSE65DJR','Colin','Duran'),
	(516,'VST32PBH','Lydia','Velasquez'),
	(517,'ZKN62KMF','Merritt','Figueroa'),
	(518,'WMB30FDC','Kirsten','Malone'),
	(519,'XOB60AVB','Jordan','Whitehead');

insert into sales.listing values
    (1,505,9,38.00,342.00,to_timestamp('2008-07-16 11:10:24', 'YYYY-MM-DD HH:MI:SS')),
    (2,506,24,129.00,3096.00,to_timestamp('2008-01-07 02:51:57', 'YYYY-MM-DD HH:MI:SS')),
    (3,507,5,164.00,820.00,to_timestamp('2008-04-02 12:52:49', 'YYYY-MM-DD HH:MI:SS')),
    (4,508,28,189.00,5292.00,to_timestamp('2008-03-28 03:14:29', 'YYYY-MM-DD HH:MI:SS')),
    (5,509,1,111.00,111.00,to_timestamp('2008-10-08 03:56:33', 'YYYY-MM-DD HH:MI:SS')),
    (6,510,5,29.00,145.00,to_timestamp('2008-10-21 02:12:50', 'YYYY-MM-DD HH:MI:SS')),
    (7,511,30,218.00,6540.00,to_timestamp('2008-10-05 08:05:05', 'YYYY-MM-DD HH:MI:SS')),
    (8,512,20,244.00,4880.00,to_timestamp('2008-08-02 06:56:54', 'YYYY-MM-DD HH:MI:SS')),
    (9,513,26,205.00,5330.00,to_timestamp('2008-10-20 10:12:19', 'YYYY-MM-DD HH:MI:SS')),
    (10,514,24,188.00,4512.00,to_timestamp('2008-07-20 10:09:37', 'YYYY-MM-DD HH:MI:SS')),
    (11,515,8,213.00,1704.00,to_timestamp('2008-11-03 02:50:43', 'YYYY-MM-DD HH:MI:SS')),
    (12,516,20,135.00,2700.00,to_timestamp('2008-09-18 10:49:39', 'YYYY-MM-DD HH:MI:SS')),
    (13,517,12,62.00,744.00,to_timestamp('2008-09-26 07:21:33', 'YYYY-MM-DD HH:MI:SS')),
    (14,518,1,53.00,53.00,to_timestamp('2008-08-08 02:00:40', 'YYYY-MM-DD HH:MI:SS'));

insert into sales.product_sales values
    (1,1,500,519,4,728,109.2,to_timestamp('2/18/2008 02:36:48', 'MM/DD/YYYY HH:MI:SS')),
    (2,4,501,518,2,76,11.4,to_timestamp('6/6/2008 05:00:16', 'MM/DD/YYYY HH:MI:SS')),
    (3,5,502,517,2,350,52.5,to_timestamp('6/6/2008 08:26:17', 'MM/DD/YYYY HH:MI:SS')),
    (4,5,503,516,1,175,26.25,to_timestamp('6/9/2008 08:38:52', 'MM/DD/YYYY HH:MI:SS')),
    (5,6,504,515,2,154,23.1,to_timestamp('8/31/2008 09:17:02', 'MM/DD/YYYY HH:MI:SS')),
    (6,10,505,514,2,394,59.1,to_timestamp('7/16/2008 11:59:24', 'MM/DD/YYYY HH:MI:SS')),
    (7,10,506,513,4,788,118.2,to_timestamp('6/26/2008 12:56:06', 'MM/DD/YYYY HH:MI:SS')),
    (8,10,507,512,1,197,29.55,to_timestamp('7/10/2008 02:12:36', 'MM/DD/YYYY HH:MI:SS')),
    (9,10,508,511,3,591,88.65,to_timestamp('7/22/2008 02:23:17', 'MM/DD/YYYY HH:MI:SS')),
    (10,12,509,510,1,65,9.75,to_timestamp('8/6/2008 02:51:55', 'MM/DD/YYYY HH:MI:SS'));   