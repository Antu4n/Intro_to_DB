import mysql.connector
from mysql.connector import Error

alx_book_store = mysql.connector.connect(
  host="localhost",
  user="root",
  password="gGolAtunji0!",
  database="alx_book_store"
)
if alx_book_store.is_connected():
    print("Database 'alx_book_store' is created successfully.")

