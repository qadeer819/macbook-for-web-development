#!/bin/bash

# macOS Developer Environment Setup Script

# Update macOS to the latest version
echo "Checking for macOS updates..."
softwareupdate -ia --verbose

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Ensure Homebrew packages are up to date
echo "Updating Homebrew..."
brew update

# Install Zsh & Oh My Zsh
echo "Installing Zsh..."
brew install zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install iTerm2
echo "Installing iTerm2..."
brew install --cask iterm2

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
brew install --cask visual-studio-code

# Install Node.js & NVM
echo "Installing NVM and Node.js..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.zshrc
nvm install --lts

# Install Docker
echo "Installing Docker..."
brew install --cask docker

# Install Git
echo "Installing Git..."
brew install git

# Configure Git
echo "Configuring Git..."
git config --global user.name "Your Name"
git config --global user.email "you@your-domain.com"

# Install Python
echo "Installing Python..."
brew install python

# Install Ruby
echo "Installing Ruby..."
brew install ruby

# Install PostgreSQL
echo "Installing PostgreSQL..."
brew install postgresql

# Install MongoDB
echo "Installing MongoDB..."
brew tap mongodb/brew
brew install mongodb-community

# Install additional tools
echo "Installing additional tools..."
brew install --cask postman
brew install --cask slack

# Set macOS preferences
# Note: These commands may require manual confirmation or might not work as expected depending on your macOS version.
echo "Setting macOS preferences..."
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
killall Finder

# Install Oh My Zsh plugins
echo "Installing Oh My Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Apply Zsh plugins
echo "Applying Zsh plugins..."
echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" >>~/.zshrc

# Apply Zsh theme
echo "Setting Zsh theme..."
echo "ZSH_THEME=\"robbyrussell\"" >>~/.zshrc

# Apply aliases
echo "Applying aliases..."
echo "alias ll='ls -lah'" >>~/.zshrc

# Reload Zsh settings
source ~/.zshrc

echo "macOS developer environment setup is complete!"
