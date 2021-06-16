# bookmark-manager


## User stories
```
As a internet power user
To see websites I regularly visit
I want to display the list of websites I've saved
```
```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

## Domain Model screenshot

![Imgur](https://i.imgur.com/q9RJx97.png)

## How to Run

1. Connect to `psql`
2. Create the database using the `psql` command: `CREATE DATABASE bookmark_manager;`
3. Create the test database using the `psql` command: `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql` in the given order.
5. Connect to the test database using the `psql` command `\c bookmark_manager_test;`
6. Run the query we have saved in the file `01_create_bookmarks_table.sql` in the given order.


