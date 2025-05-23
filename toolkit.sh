 #!/bin/bash
opcion1() {
    local ruta
    read -p "ingrese la ruta de la carpeta: " ruta
    local total_files=$(find $ruta -type f  | wc -l)
    local this_directory_files=$(find $ruta -maxdepth 1 -type f | wc -l)
    local subdirectory_files
    ((subdirectory_files = total_files - this_directory_files))

    echo "Archivos en este directorio: $this_directory_files"
    echo "Archivos en subdirectorios: $subdirectory_files"
    echo "Total de archivos: $total_files"
 }

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

