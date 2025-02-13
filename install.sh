# Check if OS is macOS
if [[ "$OSTYPE" == "darwin"* ]]; then

  echo "macOS detected. Running macOS installation script..."

  # Run macOS installation script
  sudo -u $(logname) ./install_Mac.sh
fi

# Check if OS is Linux
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Linux detected. Running Linux installation script..."
  # Run Linux installation script
  sudo -u $(logname) ./install_Linux.sh
fi

source ~/.zshrc
