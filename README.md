# dotfiles

.bashrcを管理するdotfilesのリポジトリです。

## Setup

bashとGitがインストールされた環境で以下を実行します。

    git clone git@github.com:yammerjp/dotfiles-getting-started-sample.git ~/dotfiles
    ~/dotfiles/setup.sh
    source ~/.bashrc

## Description

このリポジトリはSoftware Design 2022年6月号 第1特集 シェルの基本大全 Appendix dotfilesのススメ どこでもサクッと自分好みの設定を適用しよう！で作成するdotfilesのサンプルリポジトリです。

### 本文中のURL

記事本文中に記載した注釈のURLを以下に示します。

- 注1: [Dotfiles · the missing semester of your cs education](https://missing.csail.mit.edu/2019/dotfiles/#organization)
- 注3: [yammerjp/dotfiles: my .vimrc, .zshrc, and so on...](https://github.com/yammerjp/dotfiles)
- 注4: [dotfiles · GitHub Topics](https://github.com/topics/dotfiles)
- 注6: [秘匿情報を含む.bashrcを分割する - memo.yammer.jp](https://memo.yammer.jp/posts/devide-bashrc)
- 注8: [chezmoi - chezmoi](https://www.chezmoi.io/)
- 注9: [Yet Another Dotfiles Manager - yadm](https://yadm.io/)
- 注10: [複数の環境に適応する、階層構造のdotfiles - memo.yammer.jp](https://memo.yammer.jp/posts/layered-dotfiles)

### プロンプトのカスタマイズ

#### bash

bashのプロンプトのカスタマイズに関しては、マニュアルが参考になります

[Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Controlling-the-Prompt)

#### zsh

本文ではbashを題材に扱っています。
zshで同様のことを実現する場合には、プロンプトのカスタマイズ方法が異なります。

zshで、実行ユーザ名、実行ホスト名、現在時刻を表示するには以下のコマンドを実行します。

```zsh
echo 'PROMPT="%n@%m %* %~ \$ "' >> ~/.zshrc
source ~/.zshrc
```

zshでは、シェル変数`PROMPT`に文字列を指定することで、zshが入力を受け付ける際に画面に出力する文字列を指定できます。
シェル変数に渡した文字列の中で、特別に解釈されて置換されるものは以下のとおりです。

- `%n` ... 実行ユーザ名
- `%m` ... 実行ホスト名
- `%*` ... 現在時刻 (HH:MM:SS)
- `%~` ... カレントディレクトリ

ref: [zsh: 13 Prompt Expansion](https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html)

このように、bashのシェル変数`PS1`で実現できることとほぼ同様のことがzshの`PROMPT`で実現できます。

## LICENSE

MIT License

Copyright (c) 2022 Keisuke Nakayama

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Author

Keisuke, Nakayama ([@yammerjp](https://github.com/yammerjp))
