#!/bin/bash

# Install zsh
sudo apt-get install zsh -y

# Set zsh as the default shell
chsh -s $(which zsh)

# Create a new configuration file (e.g., custom-config.zsh)
echo "
# Your custom aliases and configurations here
alias nginx-start='brew services start nginx'           # Start Nginx
alias nginx-stop='brew services stop nginx'             # Stop Nginx
alias nginx-restart='brew services restart nginx'       # Restart Nginx
alias nginx-status='brew services list | grep nginx'    # Check Nginx Status
alias nginx-edit='code /opt/homebrew/etc/nginx/nginx.conf' # Edit Nginx Configuration
alias nginx-edit-test='nginx -t'                        # Test Nginx Configuration
alias nginx-logs='cd /Users/yp/nginx_logs;code .'
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias gcl='git clone'
alias gr='git remote'
alias grv='git remote -v'
alias gg='git grep'
alias edita='nano ~/.aliases.zsh'
" > ~/.aliases.zsh

# Add a line to source the new configuration in your .zshrc
echo 'source ~/.aliases.zsh' >> ~/.zshrc

source ~/.zshrc