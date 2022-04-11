#!/bin/sh

# ~/dotfilesが存在しなければリポジトリをダウンロードする
if ! [ -e ~/dotfiles ]; then
  git clone git@github.com:yammerjp/dotfiles-getting-started-sample.git ~/dotfiles
fi

# ~/.bashrcが存在したら ~/.bashrc.org にリネームして退避する
if [ -e ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc.org
fi

# シンボリックリンクを貼る
ln -s ~/dotfiles/.bashrc ~/.bashrc

