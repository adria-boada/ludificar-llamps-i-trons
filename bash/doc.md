
# La terminal

 - Pots ajustar la mida del text de la terminal amb 'Control' i '+' o '-'.
 - La terminal d'Ubuntu te una mida predeterminada de 80 columnes x 24 files.
 - Es poden obrir múltiples terminals, i en cada una d'elles es poden crear finestres. 
 - Hi han moltes dreceres de teclat:
     - 'Control+T' obre una nova finestra de la terminal.
     - 'Control+R' busca comandes fetes en el passat. Prèmer més d'una vegada busca comandes anteriors.
     - 'Control+D' tanca la terminal (=exit)
     - 'Control+C', possiblement la més important, abortar la tasca actual perquè l'usuari reprengui el control.
     - 'Control+L' neteja la terminal (=clear) 
     - 'Tab' autocompleta la ordre o el directori, facilitant molt el treball. 
     - 'Alt+número' permet canviar entre finestres de la terminal ràpidament.
     - 'Inicio' i 'Fin' porten al principi i a la fi de la línia actual. 

![imatge](https://github.com/adria-boada/effective-octo-umbrella/blob/main/imatges/terminal_opcions.png)

# Software

- [Article sobre apt-get install](https://embeddedinventor.com/sudo-apt-get-install-command-explained-for-beginners/)
- Advanced Packaging Tool: [apt](wiki.debian.org/Apt).

## Pip: instal·lador de mòduls de Python

Sembla que per Ubuntu no esta instal·lat de manera predeterminada. També es poden requerir llibreries addicionals. Abans de res, mirar la versió de
Python instal·lada i comprobar si pip ja esta instal·lat:
    
    python3 --version && python3 -m pip --version
    
Si no es troba cap versió instal·lada de pip, es pot descarregar l'script d'aquesta [pàgina web](https://pip.pypa.io/en/stable/installation/#get-pip-py)
([DESCÀRREGA](https://bootstrap.pypa.io/get-pip.py)). Un cop s'obté l'script, córrer:

    python3 get-pip.py

És possible que demani la següent llibreria: 
    
    sudo apt update && sudo apt install python3-distutils # Instal·lar llibreries necessàries.

Exemple d'instal·lació de mòduls de Python amb __pip__:
    
    python3 -m pip install -U pygame --user #Pygame, simulacions i jocs; opció --user per l'usuari actual. 
    python3 -m pip install -U matplotlib #Matplotlib, gràfiques.
    
    sudo apt update && sudo apt install python3-matplotlib #Els mòduls populars poden ser més fàcils d'instal·lar.
    
## Editors de textos amb entorn integrat de desenvolpament

Aplicacions per escriure codi. Utilitzar la que personalment li sembli més còmode: pot ser la llibreta del sistema operatiu per començar i més tard
aplicacions més elaborades com Geany, Sublime Text o Visual Studio Code. Per a instal·lar Geany, per exemple:

    sudo apt update && sudo apt install geany
    
o, afegint un repositori PPA no oficial:

    sudo add-apt-repository ppa:geany-dev/ppa && sudo apt update && sudo apt install geany
    

    
