import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL server (not a specific database)
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="gGolAtunji0!"
    )
    with connection.cursor() as cursor:
        if connection.is_connected():
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"Error while connecting to MySQL: {e}")


