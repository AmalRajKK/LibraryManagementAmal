select
    title,
    media_type,
    publication_date,
    isbn,
    item_description,
    prize,
    author_name
from
    items
    join authors on items.author_id = authors.id
where
    authors.author_name like '%'
    or items.title like '%';