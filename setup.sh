## Remove all preinstalled dogshit

sudo dnf remove firefox gnome-tour gnome-contacts gnome-maps gnome-calendar gnome-connections gnome-weather libreoffice-calc libreoffice-impress libreoffice-writer libreoffice-core;

## Set host name (obviously)
sudo hostnamectl set-hostname --static fedora;

## Install languages


# Go
sudo dnf install golang;
mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> $HOME/.bashrc
source $HOME/.bashrc
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.59.1
curl -sSfL https://raw.githubusercontent.com/air-verse/air/master/install.sh | sh -s

# Assembly
sudo dnf install nasm

# C/C++
sudo dnf install clang

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


# Haskell
sudo dnf install haskell-platform

## Install tools

curl -o google-chrome.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm 
sudo dnf install ./google-chrome.rpm # not sure about this line
rm google-chrome.rpm

# https://youtu.be/PKaJoqQQoIA?si=JDbt_pdjAz2TNZtu
sudo dnf install emacs;
git config --global core.editor emacs

# Setup git
sudo dnf upgrade git;
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

sudo rm -d -r .mozilla;
