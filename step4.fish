function step4 --description 'Paso 4'
    echo "Nombrando hojas..."
    set rangonum 0
    while test $rangonum -lt $nomnum
        set -gx rangonum (gnome-calculator -s $rangonum+1)
        set -gx lownum (basename -s .txt (grep -l -f (dirname $filesel)/(hoy)/temp/N$rangonum (dirname $filesel)/(hoy)/temp/*.txt) | head -n1)
        set -gx hinum (basename -s .txt (grep -l -f (dirname $filesel)/(hoy)/temp/N$rangonum (dirname $filesel)/(hoy)/temp/*.txt) | tail -n1)
        step5
        pdfunite (dirname $filesel)/(hoy)/temp/$lownum (dirname $filesel)/(hoy)/temp/$hinum (dirname $filesel)/(hoy)/dimec_(date --date=now +%Y)_controlasistencia_(date --date=now +%B)_$apell$nomb
    end
end
