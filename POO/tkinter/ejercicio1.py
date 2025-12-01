import tkinter as tk
from tkinter import messagebox as mb
class Aplicacion:
    def __init__(self):
        self.ventana1=tk.Tk()
        self.ventana1.title("Saludo de bienvenida")
        self.boton1=tk.Button(self.ventana1, text="Saludar", command=self.saludar)
        self.boton1.grid(column=0, row=0, padx=10, pady=10)
        self.ventana1.mainloop()
        codigo=int(self.codigo.get())
    def saludar(self):
        mb.showinfo("Saludo", "¡Bienvenido a mi aplicación!")
app=Aplicacion()
        
        #Ejercicio 1 tkinter