#! /bin/bash

#on a deja changer variable d'envirenement il suffit de tapper
#le nom du fichier pour executer

#Creer l'arborescence

mkdir Exo1
cd Exo1 && mkdir Module Elément Rapports Information
cd Module && mkdir Systéme Réseau
cd ../Rapports && mkdir docs && touch rapport.txt 
cd docs && mkdir SYS PROG 
cd ../../Information && touch Cv.doc cne.html

# Write some test text in our files

echo "This is cne HTML Page" >> "cne.html"
echo "This is My Cv in .doc Format" >> "Cv.doc"
#echo "This is a Rapport txt file " >> "../Rapports/rapport.txt"
#2 aller directement dans /Rapports/PROG

cd ../Rapports/docs/PROG 

#3 dans /Rapports/docs

cd .. 

#4 Revenir dans Rapports

cd .. 

#5 sans changer repertoire charger le contenu d'un fichier

cat ../Information/cne.html

#6 passer dans docs

cd ./docs

#7 afficher contenu du REpertoire Element

ls  ../../Elément

#8 ouvrer rappor

nautilus ../

#9 afficher contenu du rapport.txt

cat ../rapport.txt 


#10 ecrire dand le fichier Rapport.txt avec cat

#avec cat c'est cat > "../rapport.txt" apres entrer un texte jamper une ligne et sauvegarder

echo "************* Phrase 1 *************" >> "../rapport.txt"
cat ../rapport.txt


#11 et 12
# la remarque c'est en utlisant la remarque cat le texte va se reecrire de nouveau et non etre ajoute

echo "************* Phrase 1 *************" >> "../rapport.txt"
cat ../rapport.txt

#13 inserer une chaine sans recrire c'est cat >> rapport.txt

cd ./PROG && touch Fil1
for i in `seq 1 9`
do
    echo "************* Phrase ${i} *************" >> "Fil1"
done

# 2eme Partie

#a afficher les dix premiere lignes du Fil1
#par defaut head affiche les 10 premier lignes
echo "Les 10 premieres lignes : "
head Fil1 

#b les 2 premieres lignes

echo "Les 2 Premieres lignes : "
head -n 2 Fil1



#c les 6 derniers lignes 

echo "Les 6 dernier lignes : "
tail -6 Fil1

#d les 5 derniers lignes 

echo "Les 5 dernier lignes : "
tail -5 Fil1

#e de 5 a la derniere ligne

echo "De la cinquiéme a la derniere ligne : "
tail +5 Fil1 


#f 
#nl -> number lines : nl file_name.txt
#nl -b a file_name.txt -> including empty lines
echo -e "\nNumber Lines :"
nl Fil1

#g 

wc Fil1

#h

echo  "Number of lines is : "
wc -l Fil1

echo  "Number of words is : "
wc -w Fil1

echo  "Number of characters is : "
wc -c Fil1

#i , deplacer vous dand le repertoire /etc

cd /etc 

#j

#afficher contenu du passwd

#man 5 passwd
cat passwd 

#k lignes de fichier qui contient "ENSAK" 

grep ENSAK passwd 

#l 

grep -n ENSAK passwd

#m afficher les lignes ne contenant pas ENSAK

grep -v ENSAK passwd

#n passer au mode super user and create new user

sudo useradd kassi 

#o 

grep kassi passwd 

#p 

cut -c2-5 passwd 

#q
cut -c1-6,10 passwd 



#r



#16


