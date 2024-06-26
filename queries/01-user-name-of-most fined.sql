select
    user_name as user_name
from
    users
    join fines on users.id = fines.user_id
group by
    user_id
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
                    user_id
            ) as subquery
    );