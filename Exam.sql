create table Team ( TeamCode char(5) null,
TeamName varchar(50) not null default ‘<no name>’,
HomeField varchar(75) not null );

create table Play (PlayerID int not null,
Name varchar(80) not null default ‘<unknown>’,
DateOfBirth int not null,
Position varchar(50) default’<no position>’ null,
TeamCode char(10) null,
primary key (Player));

alter table Player drop constraint FK_Player_Team 
foreign key TeamCode 
references Player (PlayerID) on delete cascade on update cascade;



