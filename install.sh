#!/bin/bash

echo "[✔] You will install xshell tool in the system [Y/N] :" ;
read baba
if [ $baba == "y" ] ; 
  then
    echo " "
  else
    exit
fi

echo "[✔] Where Do you want to install the tool? [Ex:/usr/share/doc]:";
read refdir
echo "[✔] Checking directories..."
if [ -d "$refdir/Xshell" ] ;
then
echo "[◉] A directory Xshell was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "$refdir/Xshell"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/B3zkurt/wordpress-shell-scanner/ $refdir/wordpress-shell-scanner;
 echo "#!/bin/bash 
 perl $refdir/ordpress-shell-scanner/ordpress-shell-scanner.pl" '${1+"$@"}' > xshell;
 chmod +x wordpress-shell-scanner;
 sudo cp wordpress-shell-scanner /usr/bin/;
 rm xshell;


if [ -d "$refdir/Xshell" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute Xshell by typing xshell !   ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
