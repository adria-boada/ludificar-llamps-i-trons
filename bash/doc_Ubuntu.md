
# La terminal

La terminal és un programa que et permet comunicar-te amb l'ordinador. Enviar ordres i rebre resultats. Totes les màquines Unix tenen una terminal. 

 - Pots ajustar la mida del text de la terminal amb 'Control' i '+' o '-'.
 - La terminal d'Ubuntu te una mida predeterminada de 80 columnes x 24 files. Es pot ajustar la mida a les opcions de la terminal (imatge 1). 
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
    
# Bashic Commands

Els 'command-lines' són ordres que s'envien a la màquina. Estan constituïts per la ordre, i poden contenir, addicionalment, subordres, opcions i arguments.



 - pwd: Escriu a la terminal el directori on et trobes actualment.
        
       pwd
        
 - cd: Canvia entre directoris. Si vols veure el directori 'casa', es pot fer amb `echo $HOME`. 
        
        cd .. #Torna al directori mare/anterior; enrere.
        cd #Torna a $HOME, el directori 'casa'.
        cd ~ #Fa el mateix que l'anterior, tornar a 'casa'.
        cd /home/user/Escriptori #Canvi de directori de manera absoluta (comença amb /)
        cd Escriptori #Canvi de directori de manera relativa (si et trobes a dins de 'user', sense /)
        cd ~/Escriptori #Canvi de directori de manera absoluta sense haver d'escriure '/home/user'
        
 - mkdir: Crea un directori, una carpeta.
     
       mkdir directori_de_prova #Crea 'directori_de_prova'
       mkdir -p dir1/dir2/dir3/dir4 #Crea els directoris intermedis que siguin necessàris
       mkdir /home/user/Escriptori/directori_de_prova #Igual que cd, es pot treballar de manera absoluta o relativa.

 - ls: Llistat de fitxers i carpetes del pwd (present working directory o directori actual). 
       
       ls
       ls -a #Llistat de tots els fitxers, inclosos fitxers ocults (els que comencen amb punt; p.ex: .bashrc)
       ls -l #Llistat vertical amb una sola columna.
       ls --color #Sovint els colors estan activats de manera predeterminada. En cas contrari els pots cridar així.
 
 - touch: Crea fitxers ordinaris.  

       touch mango #Crea al pwd un fitxer buit anomenat 'mango'.
       
 - cp: copia fitxers i directoris.

       cp mango pinya #Fa una còpia del fitxer mango que es diu pinya (els dos continuen estant buits).
       
 - rm: Elimina fitxers i directoris **PERMANENTMENT**. Es poden perdre fitxers importants, per sempre. Utilitzar amb compte. 
 
       rm mango #Elimina per sempre 'mango'.
       rm -i pinya #Pregunta abans d'eliminar 'pinya', per si de cas!
 
 

