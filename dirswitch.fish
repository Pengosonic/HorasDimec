function dirswitch --description 'Viaja a un directorio. Para dimec-horas'

    set_color bryellow
    echo En: (pwd)/
    ls
    read -f -S -x -P "Ingresa la carpeta del archivo: " direc
    set -fx direc (string trim $direc)
    switch $direc
        case q salir quit exit leave Salir Quit Leave Exit
            echo "¡Programa abortado!"
            return
        case DOCS docs Docs
            echo "Viajando a $DOCS..."
            cd $DOCS
            dirswitch
        case ""
            echo "No se escribió ninguna entrada. Se cerrará el programa..."
            return
        case "*"
            if test -d $direc
                echo "¡Directorio encontrado!"
                cd $direc
                dirswitch
            else
                if test -f $direc
                    echo "¡Archivo seleccionado!"
                    set -g filesel $direc
                    return
                else
                    if not test -e $direc
                        echo "La ruta indicada no se encuentra. Se cerrará el programa..."
                        return
                    end
                end
            end
    end
end
