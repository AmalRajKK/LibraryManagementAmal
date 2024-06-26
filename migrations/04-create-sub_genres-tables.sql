create table
    sub_genres (
        id int primary key auto_increment,
        genre_id int not null,
        sub_genre varchar(125) not null,
        foreign key (genre_id) references genres (id)
    );