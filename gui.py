from tkinter import *
from tkinter import ttk
import database

print('DATA (FrontEnd): ' + str(database.data))

def mostrar_usuarios():
    registro = 0
    for fila in database.data:
        registro = registro + 1 
        print('DATA (FrontEnd): ' + str(registro) +" - "+ str(fila))
        nombre = fila[0]  
        edad = fila[1]
        genero = fila[2]  
        my_table.insert(parent='', index='end', iid=registro, text=str(registro), 
            values=(nombre, edad, genero))

def insertar_usuario():
    nombre = entry_nombre.get()
    edad = entry_edad.get()
    genero = entry_genero.get()

    demo_db = database.MyDatabase()
    demo_db.insert_db(nombre, edad, genero)
    demo_db.read_db()
    mostrar_usuarios()

window = Tk()
frame_app = Frame(window, width=400, height=400, bg="yellow")
frame_app.pack()

my_table = ttk.Treeview(frame_app)

# Define Our Columns 
my_table['columns'] = ('NOMBRE', 'EDAD', 'GENERO')

# Formate Our Columns
my_table.column('#0', width=120, minwidth=50)
my_table.column('NOMBRE', anchor=W, width=120)
my_table.column('EDAD', anchor=W, width=120)
my_table.column('GENERO', anchor=W, width=120)

# Create Headings
my_table.heading('#0', text='ID_USUARIO', anchor=W)
my_table.heading('NOMBRE', text='NOMBRE', anchor=W)
my_table.heading('EDAD', text='EDAD', anchor=W)
my_table.heading('GENERO', text='GENERO', anchor=W)

# Widgets dentro del contender APP
frame_navbar = Frame(frame_app, width=400, height=50, bg="green")
frame_navbar.grid(row=0, column=0)
frame_title = Frame(frame_app, width=400, height=90, bg="blue")
frame_title.grid(row=1, column=0)
frame_options = Frame(frame_app, width=400, height=350, bg="orange")
frame_options.grid(row=2, column=0)
my_table.grid(row=3, column=0)

# Widgets dentro del contender NAVBAR
title = Label(frame_navbar, 
              text="Ejercicio de Repaso",
              font=("Century Gothic", "14"))
title.place(x=150, y=20)

# Widgets dentro del contender TITLE
title1 = Label(frame_title, 
              text="HOLA MUNDO", 
              font=("Century Gothic", "22", "bold"),
              justify=LEFT)
title1.place(x=25, y=10)
title2 = Label(frame_title, 
              text="Todos los campos son obligartorios.", 
              font=("Century Gothic", "14"),
              justify=LEFT)
title2.place(x=25, y=50)

# Widgets dentro del contender OPTIONS
frame_form = Frame(frame_options, width=350, height=350, bg="gray")
frame_form.place(x=25, y=5)
label_sala = Label(frame_form, 
              text="Nombre:",
              font=("Century Gothic", "14", "bold"),
              fg="white",
              bg="#d48df0")
label_sala.place(x=30, y=30)
entry_nombre = Entry(frame_form, justify=LEFT, width=25, 
             font=("Century Gothic", "14"))
entry_nombre.place(x=30, y=70)

label_butakas = Label(frame_form, 
              text="Edad:",
              font=("Century Gothic", "14", "bold"),
              fg="white",
              bg="#d48df0")
label_butakas.place(x=30, y=100)
entry_edad = Entry(frame_form, justify=LEFT, width=25, 
                font=("Century Gothic", "14"))
entry_edad.place(x=30, y=140)

label_boletos = Label(frame_form, 
              text="Género:",
              font=("Century Gothic", "14", "bold"),
              fg="white",
              bg="#d48df0")
label_boletos.place(x=30, y=170)
entry_genero = Entry(frame_form, justify=LEFT, width=25, 
                font=("Century Gothic", "14"))
entry_genero.place(x=30, y=200)


button_agregar = Button(frame_form, text="Insertar usuario", 
                        font=("Century Gothic", "14", "bold"),
                        command=insertar_usuario)
button_agregar.place(x=110, y=250)

window.mainloop()