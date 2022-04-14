create database Library
use Library
create table Books(
	Id int primary key identity,
	name nvarchar(50),
)

create table Authors(
	Id int primary key identity,
	name nvarchar(50),
	surname nvarchar(50),
	age nvarchar(50),
	BookId int references Books(Id)
)

create table Genres(
	Id int primary key identity,
	name nvarchar(50)
)

create table BookToGenre(
	Id int primary key identity,
	GenreId int references Genres(Id),
	BookId int references Books(Id)
	)

select b.name 'Book name',g.name 'Genre name',a.name 'Author name',a.surname 'Author surname',a.age 'Author age' from Books as b join BookToGenre btg on b.Id = btg.BookId
join Genres as g on btg.GenreId = g.Id
join Authors as a on a.BookId = b.Id


