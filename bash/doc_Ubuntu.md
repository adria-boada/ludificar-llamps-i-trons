
# La terminal

La terminal és un programa que et permet comunicar-te amb l'ordinador. Enviar ordres i rebre resultats. Totes les màquines Unix tenen una terminal. 

 - Pots ajustar la mida del text de la terminal amb `Control` i `+` o `-`.
 - La finestra de la terminal d'Ubuntu te una mida predeterminada de 80 columnes x 24 files. Es pot ajustar a les opcions de la terminal (imatge 1). 
 - Es poden obrir múltiples terminals, i en cada una d'elles es poden crear més d'una finestra (igual que un navegador). 
 - Hi han moltes dreceres de teclat:
     - `Control`+`T` obre una nova finestra de la terminal.
     - `Control`+`R` busca comandes fetes en el passat. Prèmer més d'una vegada busca comandes anteriors. És com un historial del navegador.
     - `Control`+`D` tanca la terminal (fa el mateix que la ordre `exit`).
     - `Control`+`C`, possiblement la més important, abortar la tasca actual perquè l'usuari reprengui el control. Si en algun moment es penja la terminal i no respón, o comença a fer coses que no t'agraden, o imprimeix massa text i vols que pari, prem aquests botons!
     - `Control`+`L` neteja el text de la terminal (fa el mateix que la ordre `clear`).
     - `Tab` autocompleta la ordre o el directori, facilitant molt el treball. Acostuma't a tabular per estalviar feina!
     - `Alt`+`número` permet canviar entre finestres de la terminal ràpidament, si tens més d'una finestra oberta.
     - `Inicio` i `Fin` porten al principi i a la fi de la línia actual. 

| ![terminal_opcions](https://github.com/adria-boada/effective-octo-umbrella/blob/main/imatges/terminal_opcions.png) |
|:--:| 
|Imatge 1: Accedir a les opcions de la terminal d'Ubuntu. |
| Descripció de la imatge: Una captura de pantalla amb `Shift` + `ImprPt`, que crea un arxiu .png a la carpeta Imatges. |
    
    
# Bashic Commands

Els 'command-lines' són ordres que s'envien a la màquina. Estan constituïts per la ordre, i poden contenir, a més a més, subordres, opcions i arguments.
Per exemple:


    apt     update
    [ordre] [subordre]
    
    
    ls      -l
    [ordre] [una opció]
    
    
    ls      #Després del '#' ve un comentari que la màquina NO llegirà. 
    [ordre] [comentari]
    ### Els comentaris son per entendre's entre humans! Comenta el codi perquè altres persones el puguin entendre.
    
    
    ls      -lh    #Es poden afegir dues opcions amb un sol guió, juntes
    ls      -l -h  #O es poden separar les opcions, una per una
    [ordre] [dues opcions]
    
    
    cd      /home/user/Escriptori
    [ordre] [argument]
    
    
    ls      -lh       /home/user/Escriptori
    [ordre] [opcions] [argument]
    
    
    nano    -hlc        text.txt   #La ordre nano és un editor de textos, però aquestes opcions fa que no funcioni!
    [ordre] [3 opcions] [argument] [comentari]
    ### La opció -h imprimeix com funciona la ordre `nano` a la terminal!
    
    
    nano    -lc         text.txt   #Intenta obrir-lo així! Per tancar nano, prem `Control`+`X`.
    [ordre] [2 opcions] [argument] [comentari]
    ### Segurament nano et demanarà que guardis els canvis quan surtis: 
    ### Has de prèmer `Y` de Yes o `N` de No, i posar-li un nom al fitxer modificat/nou si el vols guardar.
    
    
    nano     h-l-c     text.txt
    [ordre] [1er arg] [2n arg]
    ### En aquest cas s'hauria escrit malament les opcions ja que no comencen pel guionet.
    ### S'envien dos arguments a la ordre nano, per tant s'obren dos fitxers al PWD:
    ### Es crea el fitxer 'h-l-c' i 'text.txt' al PWD. 


A continuació, una llista amb les ordres bàsiques de sistema, amb exemples.

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
       mkdir -p dir1/dir2/dir3/dir4 #Crea els directoris intermedis que siguin necessàris amb l'opció -p.
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
 
 

# Software *\[Apartat avançat!]*

- Article sobre [apt-get install](https://embeddedinventor.com/sudo-apt-get-install-command-explained-for-beginners/).
- Advanced Packaging Tool: Què és [apt](https://ca.wikipedia.org/wiki/Advanced_Packaging_Tool)?


## Pip: instal·lador de mòduls de Python

Sembla que per Ubuntu no esta instal·lat de manera predeterminada. També es poden requerir llibreries addicionals. Abans de res, mirar la versió de
Python instal·lada i comprobar si pip ja esta instal·lat:
    
    python3 --version && python3 -m pip --version

La manera més fàcil hauria de ser:

    sudo apt update && sudo apt install python3-pip
    
Si no es troba cap versió instal·lada de pip, es pot descarregar l'script d'aquesta [pàgina web](https://pip.pypa.io/en/stable/installation/#get-pip-py)
([DESCÀRREGA](https://bootstrap.pypa.io/get-pip.py)). Un cop s'obté l'script, córrer:

    python3 get-pip.py

És possible que demani la següent llibreria: 
    
    sudo apt update && sudo apt install python3-distutils # Instal·lar llibreries necessàries per a get-pip.py

Exemple d'instal·lació de mòduls de Python amb __pip__:
    
    python3 -m pip install -U pygame --user #Pygame, simulacions i jocs; opció --user per l'usuari local. 
    python3 -m pip install -U matplotlib #Matplotlib, gràfiques. Sense --user és una instal·lació de sistema a nivell de root (arrel). 
    
    sudo apt update && sudo apt install python3-matplotlib #Els mòduls populars poden ser més fàcils d'instal·lar.
    
    
## Editors de textos amb entorn integrat de desenvolpament

Aplicacions per escriure codi. Utilitzar la que personalment li sembli més còmode: pot ser la llibreta del sistema operatiu per començar i més tard
aplicacions més elaborades com Geany, Sublime Text o Visual Studio Code. Per a instal·lar Geany, per exemple:

    sudo apt update && sudo apt install geany
    
o, afegint un repositori PPA no oficial:

    sudo add-apt-repository ppa:geany-dev/ppa && sudo apt update && sudo apt install geany
