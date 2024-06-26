create table
    categories (
        id int primary key auto_increment,
        Privilege_id int not null,
        category varchar(125) not null,
        foreign key (Privilege_id) references Privileges (id)
    );