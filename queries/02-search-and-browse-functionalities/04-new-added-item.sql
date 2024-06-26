select
    title,
    media_type,
    publication_date,
    isbn,
    item_description,
    prize,
    author_name,
    genres.genre
from
    items
    join authors on items.author_id = authors.id
    join genres on items.genre_id = genres.id
where
    items.publication_date between '2024-01-01' And '2024-02-01';