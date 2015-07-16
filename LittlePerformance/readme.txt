◯ディレクトリ構成
command：
　scriptディレクトリ内の命令を実行するためのシェルスクリプト
script：
　個々の命令を書いたPythonスクリプト



◯シェルスクリプトの構成
common.sh：
　全シェルスクリプトで共通の変数を定義。
　「source common.sh」でインクルードする。
　HOST*に各ペッパーのIPを指定する。

その他のshファイル：
　各命令を５体のペッパーに送信する。



◯便利ツール
CommandFileMaker.sh
　Finderから直接ダブルクリックでシェルスクリプトを実行するための.commandファイルを作成する。
　ターミナルから「sh CommandFileMaker.sh ###.sh」というように
　.commandファイルにしたいシェルスクリプトを第１引数に指定して実行する。
　作成した.commandファイルはFinderからダブルクリックで実行できる。




2015/07/15

実行環境メモ

これでとりあえず動いた↓
Mac OSX 10.10.4 Yosemite
/usr/bin/python（デフォルトのpython）
Python 2.7.6 (default, Sep  9 2014, 15:04:36) 
Naoqi SDK > pynaoqi-python2.7-2.1.3.3-mac64
チェック > import naoqi (ok)
