cd $HOME
DOTFILES=$HOME/Mac_dotfiles

# export http_proxy=socks5://127.0.0.1:1080
# export https_proxy=$http_proxy
# alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1080"
# alias unsetproxy="unset ALL_PROXY"
# setproxy
echo "set proxy"
export http_proxy=http://127.0.0.1:1087
export https_proxy=$http_proxy

echo "install brew!"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew install wget

echo "Installing zshell..."
brew install zsh --HEAD
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions  $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
chsh -s /bin/zsh `whoami`
echo "Done!"

echo "Linking Mac_dotfiles..."
ln -s -f $DOTFILES/zsh/.zshrc.symlink $HOME/.zshrc
# ln -s -f $DOTFILES/vim/.vimrc.symlink $HOME/.vimrc
# mkdir -p $HOME/.config/nvim
# ln -s -f $DOTFILES/vim/.vimrc.symlink $HOME/.config/nvim/init.vim
# ln -s -f $DOTFILES/tmux/.tmux.conf.symlink $HOME/.tmux.conf
echo "Done!"

cd $HOME

echo "brew install..."
brew install git --HEAD
# brew install svn
brew install nvm --HEAD
brew install yarn
brew install vim --HEAD
# brew install neovim
# brew cask install macvim
brew install tmux --HEAD
brew install fzf --HEAD
# brew install ack --HEAD
# brew install ctags --HEAD
brew install tree
brew install reattach-to-user-namespace

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
brew cask install font-roboto-mono-nerd-font
brew cask install font-sourcecodepro-nerd-font
brew cask install font-meslo-nerd-font font-meslo-nerd-font-mono font-mononoki-nerd-font 
echo "Done!"

echo "Sourcing origin files"
source $HOME/.zshrc
tmux source $HOME/.tmux.conf
echo "Done!"

# echo "Pip install..."
# sudo easy_install pip
# pip install --upgrade --user pip
# pip install --user scrapy autopep8
# echo "Done!"

echo "Install Node"
nvm install 8.16.4
# npm config set registry https://registry.npm.taobao.org

echo "Yarn install..."
# yarn config set registry https://registry.npm.taobao.org
yarn global add nodemon pm2 neovim tern javascript-typescript-langserver vue-language-server vscode-css-languageserver-bin vscode-html-languageserver-bin eslint prettier-eslint prettier eslint-plugin-react eslint-plugin-vue typescript git+https://github.com/ramitos/jsctags.git flow-typed flow-bin husky
echo "Done!"

#Vim Plug
#For vim
# echo "Install vim-plug"
# curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# #For neovim
# curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done!"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
