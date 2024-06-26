create table
    fees (
        id int primary key auto_increment,
        category_id int not null,
        lost_fee int not null,
        late_fee int not null,
        foreign key (category_id) references categories (id)
    );