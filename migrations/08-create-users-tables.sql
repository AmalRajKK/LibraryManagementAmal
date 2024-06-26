create table
    users (
        id int primary key auto_increment,
        category_id int not null,
        user_name varchar(125) not null,
        email varchar(125) not null,
        phone_number varchar(20) not null,
        password int not null,
        status boolean not null default 1,
        foreign key (category_id) references categories (id)
    );
 