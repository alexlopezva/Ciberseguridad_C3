class Rectangulo:
    def __init__(self, ancho, alto):
        self.ancho = ancho
        self.alto = alto

    def area(self):
        return self.ancho * self.alto

# Crear objeto Rectangulo y mostrar su área
rectangulo1 = Rectangulo(25, 40)
print(rectangulo1.area())

