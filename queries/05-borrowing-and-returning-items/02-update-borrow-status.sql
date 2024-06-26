update borrower_records
set
    borrow_status = 'returned',
    return_date = '2024-03-18'
where
    item_id = 2;

