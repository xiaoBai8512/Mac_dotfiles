cd ~
DOTFILES=$HOME/Mac_dotfiles

export http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087

brew update
echo "Installing zshell..."
brew install zsh --HEAD
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
chsh -s /bin/zsh `whoami`
echo "Done!"

echo "Linking dotfiles..."
# ln -s -f $DOTFILES/emacs/.spacemacs.symlink $HOME/.spacemacs
ln -s -f $DOTFILES/vim/.vimrc.symlink $HOME/.vimrc
mkdir -p $HOME/.config/nvim
ln -s -f $DOTFILES/vim/.vimrc.symlink $HOME/.config/nvim/init.vim
ln -s -f $DOTFILES/tmux/.tmux.conf.symlink $HOME/.tmux.conf
ln -s -f $DOTFILES/zsh/.zshrc.symlink $HOME/.zshrc
echo "Done!"

echo "Brew install..."
brew install git --HEAD
brew install svn
brew install nvm --HEAD
brew install yarn --without-node
# brew install rust --HEAD
# brew install go --HEAD
# brew cask install XQuartz
brew install vim --with-override-system-vi --with-lua --HEAD
brew install neovim
# brew cask install oni
brew cask install macvim
brew install tmux --HEAD
brew install fzf --HEAD
brew install ack --HEAD
brew install ctags --HEAD
brew install tree

# brew tap dart-lang/dart
# brew install dart

brew tap caskroom/fonts
brew cask install font-robotomono-nerd-font
brew cask install font-sourcecodepro-nerd-font

# brew tap d12frosted/emacs-plus
# brew install emacs-plus

# ln -s -f /usr/local/Cellar/emacs-plus/26.1/Emacs.app /Applications
echo "Done!"

echo "Pip install..."
sudo easy_install pip
pip install --upgrade pip
pip install --user scrapy autopep8
echo "Done!"

nvm install --lts
npm config set registry https://registry.npm.taobao.org

echo "Yarn install..."
yarn config set registry https://registry.npm.taobao.org
yarn global add nodemon pm2 neovim tern javascript-typescript-langserver vue-language-server vscode-css-languageserver-bin vscode-html-languageserver-bin eslint prettier-eslint prettier eslint-plugin-react eslint-plugin-vue typescript git+https://github.com/ramitos/jsctags.git flow-typed flow-bin husky
echo "Done!"

pub global activate dart_language_server

#install htop
echo "Install htop"
curl -O https://hisham.hm/htop/releases/2.2.0/htop-2.2.0.tar.gz
tar -xvf htop-2.2.0.tar.gz
cd htop-2.2.0
./configure
make
make install
echo "Done!"

#Vim Plug
#For vim
echo "Install vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#For neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done!"
