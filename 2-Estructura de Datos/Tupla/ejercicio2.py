#Crea una lista llamada 'puertos_abiertos' con los valores [22, 80, 443, 8080].
puertos_abiertos = [22, 80, 443, 8080]
#agrega el puerto 21 a la lista.
puertos_abiertos.append(21)
#elimina el puerto 8080 de la lista.
puertos_abiertos.remove(8080)
#muestra la lista ordenada de mayor a menor.
puertos_abiertos.sort(reverse=True)
print(puertos_abiertos)
