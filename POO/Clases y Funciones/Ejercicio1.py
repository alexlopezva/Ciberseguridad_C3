class usuarios:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    #mostrar la información del usuario
    def mostrar_info(self):
        print(f"Nombre: {self.nombre}, Edad: {self.edad}")


# Crear objeto y mostrar información del objeto
usuario1 = usuarios("Ana", 28)
usuario1.mostrar_info()
    