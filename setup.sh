# Remove all preinstalled dogshit

sudo dnf remove firefox gnome-tour gnome-contacts gnome-maps gnome-calendar gnome-connections gnome-weather libreoffice-calc libreoffice-impress libreoffice-writer libreoffice-core;
sudo hostnamectl set-hostname --static fedora;
sudo rm -d -r .mozilla

# Install languages
# Go
sudo dnf install golang;
mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> $HOME/.bashrc
source $HOME/.bashrc

# Haskell
sudo dnf install haskell-platform

# Install tools

# https://youtu.be/PKaJoqQQoIA?si=JDbt_pdjAz2TNZtu
sudo dnf install emacs;
git config --global core.editor emacs

sudo dnf install vim;
mkdir -p ~/.vim/pack/vendor/start
mkdir ~/.vim/pack/vendor/opt

sudo dnf upgrade git;

# Setup git

git config --global init.defaultBranch main
echo Setup git? [y/n]
read setupgit
if [[ "$setupgit" == "y" ]]
then
  echo Git username:
  read gitusername
  git config --global user.name $gitusername
  echo Git email:
  read gitemail
  git config --global user.email $gitemail
else
  echo Git setup skipped
fi
