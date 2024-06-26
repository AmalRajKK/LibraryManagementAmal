create table
    items (
        id int primary key auto_increment,
        genre_id int not null,
        author_id int not null,
        title varchar(125) not null,
        media_type varchar(125) not null,
        publication_date date not null,
        isbn varchar(20),
        item_description varchar(225) not null,
        prize int not null,
        status varchar(20) not null,
        foreign key (author_id) references authors (id),
        foreign key (genre_id) references genres (id)
    );