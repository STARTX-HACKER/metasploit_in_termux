pkg install wget
wget -P $HOME/ https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh
chmod +x $HEME/metasploit_in_termux/metasploit.sh
bash $HOME/metasploit_in_termux/metasploit.sh
rm $HOME/metasploit-framework/Gemfile.lock
cd $HOME/metasploit-framework/
bundle install
bundle update
mkdir $PREFIX/opt
mv $HOME/metasploit-framework $PREFIX/opt
clear