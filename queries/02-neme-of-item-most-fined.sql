select
    title as title
from
    items
    join fines on items.id = fines.item_id
group by
    item_id
having
    count(*) = (
        select
            max(occurrence)
        from
            (
                select
                    count(*) as occurrence
                from
                    fines
                group by
                    item_id
            ) as subquery
    );