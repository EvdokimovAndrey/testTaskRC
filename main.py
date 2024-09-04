import psycopg2
import json
import ftplib
from config import *


def connect_to_db(db_host, db_name, db_user, db_password):
    try:
        conn = psycopg2.connect(
            host=db_host,
            database=db_name,
            user=db_user,
            password=db_password
        )
        return conn
    except Exception as e:
        print(f"Connect to PostgreSQL error: {e}")


def read_data(conn, table_name):
    try:
        with conn.cursor() as cursor:
            cursor.execute(f"SELECT * FROM {table_name}")
            data = cursor.fetchall()
            return data
    except Exception as e:
        print(f"Read data error: {e}")


def save_data(data, filename):
    try:
        with open(filename, 'w') as f:
            json.dump(data, f, indent=4, default=str)
    except Exception as e:
        print(f"Save data error: {e}")


def upload_file_to_ftp(ftp_host, ftp_user, ftp_password, filename):
    try:
        with ftplib.FTP(ftp_host, ftp_user, ftp_password) as ftp:
            with open(filename, 'rb') as file:
                ftp.storbinary(f"STOR {filename}", file)
    except Exception as e:
        print(f"upload to FTP error: {e}")


connection = connect_to_db(DB_HOST, DB_NAME, DB_USER, DB_PASSWORD)
json_data = read_data(connection, TABLE_NAME)
save_data(json_data, "data.json")
# upload_file_to_ftp(FTP_HOST, FTP_USER, FTP_PASSWORD, "data.json")