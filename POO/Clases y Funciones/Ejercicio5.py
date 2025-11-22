# Crea una clase llamada estudiante con atributos nombre y calificaciones.
class Estudiante:
    def __init__(self, nombre, calificaciones):
        self.nombre = nombre
        self.calificaciones = calificaciones

    # Método para calcular el promedio de las calificaciones
    def promedio(self):
        if len(self.calificaciones) == 0:
            return 0
        return sum(self.calificaciones) / len(self.calificaciones)
# Crear objeto Estudiante y mostrar su promedio
estudiante1 = Estudiante("Alexander Lopez", [78, 87, 93, 81, 89])
print(f"Nombre del estudiante: {estudiante1.nombre}, Promedio de calificaciones: {estudiante1.promedio()}")
