http://anotetomyself.com/technical/sync-vim-online-vundle-version-control

Now part 2. Setting sync in your other environmen:
1. Cloning your dotvim. The repo that you created while setting up your git
   git clone git@github.com:nicholasklem/vim.git .vim
2. soft link your vimrc
   ln -s ~/.vim/vimrc ~/.vimrc
3. Seting up Vundle
   git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
4. Installing the packages
   open vim and execute :BundleInstall
