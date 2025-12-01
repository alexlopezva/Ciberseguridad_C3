
import tkinter as tk
from tkinter import messagebox as mb
class Aplicacion:
    def __init__(self):
        self.ventana1=tk.Tk()
        self.ventana1.title("Calculadora Sencilla")
        
        self.label1=tk.Label(self.ventana1, text="Número 1:")
        self.label1.grid(column=0, row=0, padx=10, pady=10)
        
        self.entry1=tk.Entry(self.ventana1)
        self.entry1.grid(column=1, row=0, padx=10, pady=10)
        
        self.label2=tk.Label(self.ventana1, text="Número 2:")
        self.label2.grid(column=0, row=1, padx=10, pady=10)
        
        self.entry2=tk.Entry(self.ventana1)
        self.entry2.grid(column=1, row=1, padx=10, pady=10)
        
        self.boton1=tk.Button(self.ventana1, text="Sumar", command=self.sumar_numeros)
        self.boton1.grid(column=0, row=2, columnspan=2, padx=10, pady=10)
        
        self.label_resultado=tk.Label(self.ventana1, text="Resultado: ")
        self.label_resultado.grid(column=0, row=3, columnspan=2, padx=10, pady=10)
        
        self.ventana1.mainloop()
        
    def sumar_numeros(self):
        try:
            num1=float(self.entry1.get())
            num2=float(self.entry2.get())
            resultado=num1 + num2
            self.label_resultado.config(text=f"Resultado: {resultado}")
        except ValueError:
            mb.showerror("Error", "Por favor ingrese números válidos.")
app=Aplicacion()