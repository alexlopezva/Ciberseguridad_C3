#Crea una ventana con un Listbox que muestre una lista de elementos. Agrega un botón para añadir nuevos elementos a la lista.
import tkinter as tk
from tkinter import simpledialog as sd
class Aplicacion:
    def __init__(self):
        self.ventana1=tk.Tk()
        self.ventana1.title("Lista de Elementos")
        
        self.listbox1=tk.Listbox(self.ventana1)
        self.listbox1.grid(column=0, row=0, padx=10, pady=10)
        
        self.boton1=tk.Button(self.ventana1, text="Añadir Elemento", command=self.añadir_elemento)
        self.boton1.grid(column=0, row=1, padx=10, pady=10)
        
        self.ventana1.mainloop()
        
    def añadir_elemento(self):
        nuevo_elemento=sd.askstring("Entrada", "Ingrese el nuevo elemento:")
        if nuevo_elemento:
            self.listbox1.insert(tk.END, nuevo_elemento)
app=Aplicacion()