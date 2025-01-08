function step2
    set -g totnum (count (pwd)/*)
    set -g num 0
    while test (gnome-calculator -s $totnum) -gt $num
        set -g num (gnome-calculator -s $num+1)
        pdftotext -layout (dirname $filesel)/(hoy)/temp/(gnome-calculator -s $num)
    end
end
