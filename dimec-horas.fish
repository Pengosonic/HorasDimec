function dimec-horas --description 'Separa PDF de marcajes mensuales por funcionario'

    welcome-dimec
    dirswitch
    mkdir -p (dirname $filesel)/(hoy)/temp
    step1
    step2
    step3
    step4
    dimdel
    echo "¡El programa ha terminado!"
    cd
    echo "¡Se ha vuelto a "(pwd)"!"
    set -g filesel
end
