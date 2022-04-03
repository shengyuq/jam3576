create table sales(
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

copy sales from 'sales_tab.txt'
iam_role default
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS';