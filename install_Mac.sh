# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
  echo "\n\nHomebrew is not installed. Installing Homebrew..."

  # Install Homebrew
  # Run the following command as current user so that the Homebrew installation script can be run without any user confirmation prompt
  sudo -u $(logname) /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'export PATH=$PATH:/opt/homebrew/bin' >>~/.zshrc
  source ~/.zshrc

  echo "\n\nUpdating Homebrew..."
  brew update
fi

# Install Ansible
echo "\n\nInstalling Ansible..."
brew install ansible
echo "\n\n"

#Validate Ansible:
ansible ---version
