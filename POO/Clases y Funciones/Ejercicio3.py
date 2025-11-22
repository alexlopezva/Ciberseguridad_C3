# Crear una clase llamada coche con atributos marca y velocidad
class Coche:
    def __init__(self, marca, velocidad):
        self.marca = marca
        self.velocidad = velocidad

    # Método para acelerar el coche
    def acelerar(self, incremento):
        self.velocidad += incremento
        print(f"El coche {self.marca} ha acelerado. Nueva velocidad: {self.velocidad} km/h")

    # Método para frenar el coche
    def frenar(self, decremento):
        self.velocidad -= decremento
        if self.velocidad < 0:
            self.velocidad = 0
        print(f"El coche {self.marca} ha frenado. Nueva velocidad: {self.velocidad} km/h")
# Crear objeto Coche y mostrar su comportamiento
coche1 = Coche("Toyota", 0)
coche1.acelerar(80)
coche1.frenar(30)
coche1.frenar(40)
print (f"Marca del coche: {coche1.marca}, Velocidad actual: {coche1.velocidad} km/h")

