function welcome-dimec --description 'Muestra el mensaje de bienvenida a dimec-horas'
    clear
    set_color brgreen --bold --underline
    echo "¡Bienvenido al programa!"
    set_color normal
    set_color brcyan
    echo \n"Escribe \""(set_color -u)"salir"(set_color normal; set_color brcyan)"\" para cerrar el programa"\n"Escribe "\"(set_color -u)"DOCS"(set_color normal; set_color brcyan)\" "para buscar desde la carpeta \"Documentos\""
    echo (set_color green)\n"Elije un "(set_color green --underline)"archivo"(set_color normal; set_color green)" PDF, o navega hacia un "(set_color green --underline)"directorio"
    set_color normal
    set_color bryellow
    echo \n"Sigue el ejemplo: /home/$USER/ruta/de/archivo/"\n
end
