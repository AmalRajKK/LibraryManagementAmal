create table
	fines (
		id int primary key auto_increment,
        user_id int not null,
        item_id int not null,
        borrower_id int not null,
        foreign key (borrower_id) references borrower_records (id),
        foreign key (user_id) references users (id),
        foreign key (item_id) references items (id)
        );
