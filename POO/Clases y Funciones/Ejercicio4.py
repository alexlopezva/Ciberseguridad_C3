# Crea una clase llamada cuenta bancaria con atributos titular y balance.
class CuentaBancaria:
    def __init__(self, titular, balance=0):
        self.titular = titular
        self.balance = balance
    # Método para depositar dinero en la cuenta
    def depositar(self, cantidad):
        if cantidad > 0:
            self.balance += cantidad
            print(f"Depósito exitoso: {cantidad}. Nuevo balance: {self.balance}")
        else:
            print("La cantidad a depositar debe ser positiva.")
    # Método para retirar dinero de la cuenta
    def retirar(self, cantidad):
        if 0 < cantidad <= self.balance:
            self.balance -= cantidad
            print(f"Retiro exitoso: {cantidad}. Nuevo balance: {self.balance}")
        else:
            print("Fondos insuficientes o cantidad inválida.")
# Crear objeto CuentaBancaria y mostrar su comportamiento
cuenta1 = CuentaBancaria("Alexander Lopez", 1000)
cuenta1.depositar(500)
cuenta1.retirar(200)
cuenta1.retirar(2000)
print(f"Titular: {cuenta1.titular}, Balance final: {cuenta1.balance}")
