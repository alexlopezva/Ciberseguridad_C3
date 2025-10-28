#Pregunta al usuario si tiene internet en casa (1 = Sí, 0 = No) y guarda la respuesta como lógico.
tiene_internet = bool(int(input("¿Tienes internet en casa? (1 = Sí, 0 = No): ")))
#Imprime un mensaje basado en la respuesta del usuario.
if tiene_internet:
    print("¡Excelente! Puedes navegar por internet desde casa.")
else:
    print("Que pena. No tener internet en la casa puede ser un desafío hoy en día.")
