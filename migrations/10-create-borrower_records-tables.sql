create table
    borrower_records (
        id int primary key auto_increment,
        item_id int not null,
        user_id int not null,
        borrow_date date not null,
        return_date date,
        due_date date not null,
        borrow_status varchar(50) not null,
        foreign key (item_id) references items (id),
        foreign key (user_id) references users (id)
    );
