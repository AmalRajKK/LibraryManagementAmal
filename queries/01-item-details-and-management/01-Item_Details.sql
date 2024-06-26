select
    items.title,
    items.item_description,
    items.publication_date,
    authors.author_name,
    genres.genre,
    sub_genres.sub_genre
from
    items
    join authors on items.author_id = authors.id
    join genres on items.genre_id = genres.id
    join sub_genres on genres.id = sub_genres.genre_id
where
    title = '1984';