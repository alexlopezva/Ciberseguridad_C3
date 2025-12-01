
import tkinter as tk
from tkinter import messagebox as mb
class Aplicacion:
    def __init__(self):
        self.ventana1=tk.Tk()
        self.ventana1.title("Mostrar Texto")
        
        self.entry1=tk.Entry(self.ventana1)
        self.entry1.grid(column=0, row=0, padx=10, pady=10)
        
        self.boton1=tk.Button(self.ventana1, text="Mostrar Texto", command=self.mostrar_texto)
        self.boton1.grid(column=0, row=1, padx=10, pady=10)
        
        self.label1=tk.Label(self.ventana1, text="")
        self.label1.grid(column=0, row=2, padx=10, pady=10)
        
        self.ventana1.mainloop()
        
    def mostrar_texto(self):
        texto=self.entry1.get()
        self.label1.config(text=texto)
app=Aplicacion()