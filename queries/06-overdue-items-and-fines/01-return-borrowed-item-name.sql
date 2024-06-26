select
    items.title
from
    items
    join borrower_records on items.id = borrower_records.item_id
where
    borrower_records.borrow_status <> 'returned';
