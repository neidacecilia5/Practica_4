# PASO 1: Importar el módulo "mysql.connector" previamente ¡INSTALADO!
import mysql.connector

class MyDatabase:
    def open_connection(self):
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_demo")
        return connection

    def insert_db(self, nombre, edad, genero):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_usuarios(NOMBRE, EDAD, GENERO) VALUES (%s,%s,%s)"
        data = (nombre, edad, genero)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()       