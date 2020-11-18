create table Team 
( 
TeamCode char(5) constraint PK_Team primary key not null,
TeamName varchar(50) not null default '<no name>',
HomeField varchar(75) not null 
)

create table Player 
(
	PlayerID int identity(1,1) constraint PK_Player primary key not null,
	Name varchar(80) not null default '<unknown>',
	DateOfBirth date not null,
	Position varchar(50) default '<no position>' null,
	TeamCode char(5) not null,
	constraint FK_Player_Team foreign key (TeamCode)
		references Team(TeamCode)
		on update cascade
		on delete cascade
)