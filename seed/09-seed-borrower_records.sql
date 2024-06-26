insert into
    borrower_records (
        item_id,
        user_id,
        borrow_date,
        return_date,
        due_date,
        borrow_status
    )
values
    (
        1,
        1,
        '2023-05-01',
        '2023-05-20',
        '2023-05-31',
        'returned'
    ),
    (
        2,
        2,
        '2023-06-10',
        null,
        '2023-07-10',
        'borrowed'
    ),
    (
        3,
        3,
        '2023-05-15',
        '2023-06-01',
        '2023-06-15',
        'returned'
    ),
    (4, 1, '2023-05-20', null, '2023-06-20', 'overdue');