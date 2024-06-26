select
    users.user_name,
    users.email,
    users.phone_number,
    categories.category
from
    users
    join categories on users.category_id = categories.id;
