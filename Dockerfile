FROM ubuntu:22.04

RUN apt update
RUN apt update
RUN apt install -y curl
RUN apt install -y vim
RUN apt install -y neovim 
RUN apt install -y git
RUN apt install -y zsh

COPY ./dotfiles/.bashrc /root/.bashrc
RUN . /root/.bashrc

RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN mkdir -p /root/.config/nvim
COPY ./dotfiles/.config/nvim/init.vim /root/.config/nvim/init.vim
RUN vim +PlugInstall +q +q
RUN vim +GoInstallBinaries +q

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
RUN source $HOME/.cargo/env
