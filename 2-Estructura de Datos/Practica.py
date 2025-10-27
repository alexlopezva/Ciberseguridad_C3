def mostrar_mensaje():
    print("ingrese dos números para sumarlos")


def sumar():
    valor1 = int(input("Ingrese el primer número: "))
    valor2 = int(input("Ingrese el segundo número: "))  
    resultado = valor1 + valor2
    print("El resultado de la suma es:", resultado)

mostrar_mensaje()
sumar() 

def restar():
    valor1 = int(input("Ingrese el primer número: "))
    valor2 = int(input("Ingrese el segundo número: "))  
    resultado = valor1 - valor2
    print("El resultado de la resta es:", resultado)

restar()
def multiplicar():
    valor1 = int(input("Ingrese el primer número: "))
    valor2 = int(input("Ingrese el segundo número: "))  
    resultado = valor1 * valor2
    print("El resultado de la multiplicación es:", resultado)
multiplicar()
def dividir():
    valor1 = int(input("Ingrese el primer número: "))
    valor2 = int(input("Ingrese el segundo número: "))  
    if valor2 != 0:
        resultado = valor1 / valor2
        print("El resultado de la división es:", resultado)
    else:
        print("Error: No se puede dividir por cero.")
dividir()
def potencia():
    base = int(input("Ingrese la base: "))
    exponente = int(input("Ingrese el exponente: "))  
    resultado = base ** exponente
    print("El resultado de la potencia es:", resultado)
potencia()
def modulo():
    valor1 = int(input("Ingrese el primer número: "))
    valor2 = int(input("Ingrese el segundo número: "))  
    resultado = valor1 % valor2
    print("El resultado del módulo es:", resultado)
modulo()
def raiz_cuadrada():
    valor = int(input("Ingrese un número para calcular su raíz cuadrada: "))  
    if valor >= 0:
        resultado = valor ** 0.5
        print("El resultado de la raíz cuadrada es:", resultado)
    else:
        print("Error: No se puede calcular la raíz cuadrada de un número negativo.")
raiz_cuadrada()
def valor_absoluto():
    valor = int(input("Ingrese un número para calcular su valor absoluto: "))  
    resultado = abs(valor)
    print("El valor absoluto es:", resultado)
valor_absoluto()
def redondear():
    valor = float(input("Ingrese un número decimal para redondear: "))  
    resultado = round(valor)
    print("El número redondeado es:", resultado)
redondear()
def factorial():
    valor = int(input("Ingrese un número para calcular su factorial: "))  
    if valor < 0:
        print("Error: No se puede calcular el factorial de un número negativo.")
    else:
        resultado = 1
        for i in range(1, valor + 1):
            resultado *= i
        print("El factorial de", valor, "es:", resultado)
factorial()
