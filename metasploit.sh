apt install wget -y
[ -e "$PREFIX/opt" ] || mkdir $PREFIX/opt
cd $PREFIX/opt
wget -P $PREFIX/opt/ https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh
chmod +x $PREFIX/opt/metasploit.sh
bash $PREFIX/opt/metasploit.sh
rm $PREFIX/opt/metasploit-framework/Gemfile.lock
cd $PREFIX/opt/metasploit-framework/
bundle install
bundle update
rm -rf $HOME/metasploit_in_termux
rm -rf $PREFIX/opt/metasploit.sh
clear