 #!/bin/bash
opcion1() {
    local ruta
    read -p "ingrese la ruta de la carpeta: " ruta
    local resultado=$(echo -n "hola" | wc -l)
    echo "$resultado"
 }

# find "$ruta" -type f | wc -l

clear
 while true; do

    echo "=======Menu======="
    echo "1) opcion 1"
    echo "2) opcion 2"
    echo "3) opcion 3"
    echo "0) salir"
    echo "=================="

    read -p "ingrese opcion: " opcion

    case $opcion in
        0)
            break
            ;;
        1)
            opcion1
            ;;
    esac

 done

