
#!/bin/bash
# COLORS

# \e: Tecla control que invoca ESC; és el codi de control que canvia color.
# Es poden usar d'altres invocadors que facin aparèixer ESC.
# 38;5: Prefix que crida la paleta de colors xterm-256.
# $code: {0..255}, tots els colors dins la paleta 256.
# 04: modifica el text a subratllat. Amb 01 negreta; 02 cursiva; etc.
# Al final, "\e[0m" fa un reset del color cada iteració.

# For loop mostra tots els colors xterm-256:
for code in {0..255}
do echo -e "\e[38;5;${code};04m"'\\e[38;5;'"$code"m"\e[0m"
done

# Si se li dona un argument $1==1, imprimeix modificadors addicionals.
# (subratllat, cursiva, negreta, invisible, parpellajant...)
if [ "$1" == "1" ]; then
	for code in {0..9}
	do echo -e "\e[38;5;32;${code}m"'\\e[38;5;32;'"$code"m"\e[0m"
	done
fi


# Enllaç informació: 
# [1]: http://jafrog.com/2013/11/23/colors-in-terminal.html
# [2]: https://gist.github.com/JBlond/2fea43a3049b38287e5e9cefc87b2124

