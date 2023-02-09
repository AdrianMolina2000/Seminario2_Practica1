from os import system
def pedirNumeroEntero():
    correcto = False
    num = 0
    while(not correcto):
        try:
            num = int(input("Introduce un número entero: "))
            correcto = True
        except ValueError:
            print('Error, introduce un número entero')
    return num

salir = False
opcion = 0

while not salir:
    print("---------------------")
    print("0. Salir")
    print("1. Borrar Información")
    print("2. Crear Base de Datos")
    print("3. Extraer Informacion")
    print("4. Cargar Informacion")
    print("5. Realizar Consultas")
    print("---------------------")

    print("Elige una opción")

    opcion = pedirNumeroEntero()

    print("---------------------")
    if opcion == 1:
        print("Borrar Información")
        system("sqlcmd -S localhost -U SA -P Adrian3020! -i delete.sql")
        print("\nBorrado")
    elif opcion == 2:
        print("Crear Base de Datos")
        system("sqlcmd -S localhost -U SA -P Adrian3020! -i modelo.sql")
        print("\nBase Creada")
    elif opcion == 3:
        print("Cargar Informacion")
        system("sqlcmd -S localhost -U SA -P Adrian3020! -i temporal.sql")
        print("\nInformación Cargada")
    elif opcion == 4:
        print("Extraer Informacion")
        system("sqlcmd -S localhost -U SA -P Adrian3020! -i cargaMasiva.sql")
        print("\nInformación Extraida")
    elif opcion == 5:
        salir2 = False
        opcion2 = 0

        while not salir2:
            print("---------------------")
            print("0. Salir")
            print("1. Consulta 1")
            print("2. Consulta 2")
            print("3. Consulta 3")
            print("4. Consulta 4")
            print("5. Consulta 5")
            print("6. Consulta 6")
            print("7. Consulta 7")
            print("8. Consulta 8")
            print("9. Consulta 9")
            print("10. Consulta 10")
            print("Elige una opción")
            print("---------------------")
            
            opcion2 = pedirNumeroEntero()

            print("---------------------")
            if opcion2 == 1:
                print("Consulta 1")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta1.sql")
            elif opcion2 == 2:
                print("Consulta 2")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta2.sql")
            elif opcion2 == 3:
                print("Consulta 3")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta3.sql")
            elif opcion2 == 4:
                print("Consulta 4")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta4.sql")
            elif opcion2 == 5:
                print("Consulta 5")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta5.sql")
            elif opcion2 == 6:
                print("Consulta 6")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta6.sql")
            elif opcion2 == 7:
                print("Consulta 7")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta7.sql")
            elif opcion2 == 8:
                print("Consulta 8")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta8.sql")
            elif opcion2 == 9:
                print("Consulta 9")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta9.sql")
            elif opcion2 == 10:
                print("Consulta 10")
                system("sqlcmd -S localhost -U SA -P Adrian3020! -i consultas/consulta10.sql")
            elif opcion2 == 0:
                salir2 = True
            else:
                print("Introduce un número entre 0 y 10")
            print("---------------------")
    elif opcion == 0:
        salir = True
    else:
        print("Introduce un número entre 0 y 5")
    print("---------------------")