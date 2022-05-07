FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
  curl \
  git \
  vim \
  neovim \
  nodejs \
  npm \
  && rm -rf /var/lib/apt/lists/*

############
# dotfiles #
############

#.bash_profile
COPY ./dotfiles/.bashrc /root/.bashrc
RUN . /root/.bashrc

#vim/nvim
RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN mkdir -p /root/.config/nvim
COPY ./dotfiles/.config/nvim/init.vim /root/.config/nvim/init.vim
RUN vim +PlugInstall +q +q
#RUN vim +CocInstall coc-tsserver +q
RUN vim +GoInstallBinaries +q
