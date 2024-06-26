update users
set
    password = '11223344'
where
    users.id = 2
    and users.password = 345;
