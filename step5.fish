function step5 --description 'Paso 5. Renombrar'

    set -gx nomb (string trim (string split " " <(dirname $filesel)/(hoy)/temp/N$rangonum | head -n1) | string lower | sed -E "s/[[:alnum:]_'-]+/\u&/g")
    set -gx apell (string trim (string split " " <(dirname $filesel)/(hoy)/temp/N$rangonum | head -n2 | tail -n1) | string lower | sed -E "s/[[:alnum:]_'-]+/\u&/g")
end
