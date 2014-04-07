http://anotetomyself.com/technical/sync-vim-online-vundle-version-control

Now part 2. Setting sync in your other environments:

# Cloning your dotvim. The repo that you created while setting up your git
    git clone git@github.com:nicholasklem/vim.git .vim
# soft link your vimrc
    ln -s ~/.vim/vimrc ~/.vimrc
# Seting up Vundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# Installing the packages
    open vim and execute :BundleInstall
