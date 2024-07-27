# Remove all preinstalled dogshit

sudo dnf remove firefox gnome-tour gnome-contacts gnome-maps gnome-calendar gnome-connections gnome-weather libreoffice-calc libreoffice-impress libreoffice-writer libreoffice-core;
sudo hostnamectl set-hostname --static fedora;
sudo rm -d -r .mozilla

# Install languages

sudo dnf install golang;
mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> $HOME/.bashrc
source $HOME/.bashrc

# Install tools

sudo dnf install emacs;
git config --global core.editor emacs

# Setup git

sudo dnf upgrade git;
git config --global init.defaultBranch main

echo Setup git? [y/n]
read setupgit
if [$setupgit -eq "y"]
then
  echo Git username:
  read gitusername
  git config --global user.name $gitusername
  echo Git email:
  read gitemail
  git config --global user.email $gitemail
fi
