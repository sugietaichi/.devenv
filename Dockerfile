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
