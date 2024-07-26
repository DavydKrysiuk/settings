# Remove all preinstalled dogshit

sudo dnf remove firefox gnome-tour gnome-contacts gnome-maps gnome-calendar gnome-connections gnome-weather libreoffice-calc libreoffice-impress libreoffice-writer libreoffice-core;
sudo hostnamectl set-hostname --static fedora;

# Install languages

sudo dnf install golang;

# Setup git

sudo dnf upgrade git;

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
