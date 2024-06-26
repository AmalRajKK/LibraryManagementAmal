# Library Management Database 

## Table Descriptions
___
### 1. authors
Stores information about the authors of items in the library.

- **id:** (int, primary key, auto increment) - Unique identifier for each author.
- **author_name:** (varchar, not null) - Name of the author.
- **dob:** (date) - Date of birth of the author.
- **dod:** (date) - Date of death of the author (if applicable).
- **nationality:** (varchar) - Nationality of the author.
___
### 2. genres
Stores the main genres of the items available in the library.

- **id:** (int, primary key, auto increment) - Unique identifier for each genre.
- **genre:** (varchar, not null) - Name of the genre.
___
### 3. sub_genres
Stores sub-genres linked to the main genres.

- **id:** (int, primary key, auto increment) - Unique identifier for each sub-genre.
- **genre_id:** (int, foreign key, not null) - Reference to the genre this sub-genre belongs to.
- **sub_genre:** (varchar, not null) - Name of the sub-genre.
___
### 4. items
Stores information about the items available in the library.

- **id:** (int, primary key, auto increment) - Unique identifier for each item.
- **genre_id:** (int, foreign key, not null) - Reference to the genre of the item.
- **author_id:** (int, foreign key, not null) - Reference to the author of the item.
- **title:** (varchar, not null) - Title of the item.
- **media_type:** (varchar, not null) - Type of media (e.g., book, DVD).
- **publication_date:** (date, not null) - Publication date of the item.
- **isbn:** (varchar, 20) - ISBN number of the item.
- **item_description:** (varchar, 225, not null) - Description of the item.
- **prize:** (int, not null) - Price of the item.
___
### 5. Privileges
Stores information about the privileges associated with different categories of users.

- **id:** (int, primary key, auto increment) - Unique identifier for each privilege set.
- **loan_duration:** (int, not null) - Duration for which items can be borrowed (in days).
- **number_of_items:** (int, not null) - Number of items that can be borrowed at a time.
___
### 6. categories
Stores information about the different categories of users.

- **id:** (int, primary key, auto increment) - Unique identifier for each user category.
- **Privilege_id:** (int, foreign key, not null) - Reference to the privileges assigned to this category.
- **category:** (varchar, not null) - Name of the user category (e.g., Student, Teacher).
___
### 7. users
Stores information about the users of the library.

- **id:** (int, primary key, auto increment) - Unique identifier for each user.
- **category_id:** (int, foreign key, not null) - Reference to the user's category.
- **user_name:** (varchar, not null) - Name of the user.
- **email:** (varchar, not null) - Email address of the user.
- **phone_number:** (varchar, not null) - Phone number of the user.
___
### 8. fees
Stores information about the fees associated with different user categories.

- **id:** (int, primary key, auto increment) - Unique identifier for each fee set.
- **category_id:** (int, foreign key, not null) - Reference to the user category these fees apply to.
- **fee:** (int, not null) - Membership fee for the category.
- **late_fee:** (int, not null) - Late fee for overdue items.
___
### 9. borrower_records
Stores records of items borrowed by users.

- **id:** (int, primary key, auto increment) - Unique identifier for each borrower record.
- **item_id:** (int, foreign key, not null) - Reference to the borrowed item.
- **user_id:** (int, foreign key, not null) - Reference to the user who borrowed the item.
- **borrow_date:** (date, not null) - Date the item was borrowed.
- **return_date:** (date) - Date the item was returned (if applicable).
- **due_date:** (date, not null) - Date the item is due to be returned.
- **borrow_status:** (varchar, not null) - Status of the borrow (e.g., Borrowed, Returned, Overdue).
