function step3
    echo "Identificando hojas..."
    pdftotext -layout $filesel - | grep -i nombre | sed 's/^Nombre *//' >(dirname $filesel)/(hoy)/temp/Nombres
    set -gx nomnum (gnome-calculator -s (count <(dirname $filesel)/(hoy)/temp/Nombres))
    set -lx nomcalc 0
    while test $nomnum -gt $nomcalc
        set -fx nomcalc (gnome-calculator -s $nomcalc+1)
        head -n$nomcalc (dirname $filesel)/(hoy)/temp/Nombres | tail -n1 >(dirname $filesel)/(hoy)/temp/N$nomcalc
    end
end
