function dimdel --description 'Limpieza dimec-horas'
    echo "Eliminando archivos temporales..."
    rm -frd (dirname $filesel)/(hoy)/temp
end
