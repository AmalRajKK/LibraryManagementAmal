update users
set
    users.phone_number = '1122334455',
    users.email = 'abc@gmail.com'
where
    users.id = 1;
