function step1 --description 'Primer paso PDF dimec-horas'
    cd (dirname $filesel)/(hoy)/temp
    echo "Procesando hojas..."
    pdftotext -layout $filesel - | grep -iq nombre
    pdfseparate $filesel (pwd)/%d
end
