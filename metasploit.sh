cd
pkg install wget
wget -P $HOME/ https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh
chmod +x $HOME/metasploit.sh
bash $HOME/metasploit.sh
rm $HOME/metasploit-framework/Gemfile.lock
cd $HOME/metasploit-framework/
bundle install
bundle update
[ -e "$PREFIX/opt" ] || mkdir $PREFIX/opt
mv $HOME/metasploit-framework $PREFIX/opt
rm -rf $HOME/metasploit_in_termux
rm -rf $HOME/metasploit.sh
clear
