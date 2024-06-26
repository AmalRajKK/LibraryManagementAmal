create table
    authors (
        id int primary key auto_increment,
        author_name varchar(125) not null,
        dob date,
        dod date,
        nationality varchar(125)
    );