# ロボットシステム学の課題

[![test](https://github.com/hide4096/plus_stdin/actions/workflows/test.yml/badge.svg)](https://github.com/hide4096/plus_stdin/actions/workflows/test.yml)

未来ロボティクス学科セメスター4 ロボットシステム学の課題で作ったコマンドたちです

[plus](#plus)

[unkothink](#unkothink)

[date_nontp](#date_nontp)

## Download

これらのコマンドを使うには、このリポジトリを適当なとこにクローンしてください。

```
git clone https://github.com/hide4096/plus_stdin.git
cd plus_stdin
```

Pythonが入っていない場合はインストールしてください

```
sudo apt update
sudo apt install python3
```

## Requirement

Python3.7以降

date_nontpの実行にはネット環境も必要です。(httpとhttpsしか通らない~~ゴミ~~ネットワークでも可)

次の環境で動作を確認しています
- Ubuntu 20.04
  - Python3.7 ~ 3.10
- Ubuntu 22.04
  - Python3.7 ~ 3.10
- Ubuntu 18.04
  - Python3.7 ~ 3.10

# plus

<a id="plus"></a>

標準入力から数字を読み込み、それらを合計して出力します。

## Usage

```
$ seq 10 | ./plus
55.0
```

# unkothink

<a id="unkothink"></a>

う○このAAが考え事をしてるASCII画像を生成するcowsayライクな~~クソ~~コマンドです。

## Description

```
unkothink [-s] メッセージ
```

コマンドの後に入力した内容を考えているう○このASCII画像を生成します。
引数なしで実行した場合は、標準入力から読み込みます。


### Option

```
-s うんこの段数
```

-s オプションによって生成されるう○この段数が変化します。

## Usage

```
$ ./unkothink -s 4 unkodesu
 ----------
| unkodesu |
 ----------
  ○
   ○
     人
    (__)
   (____)
  (______)
 (________)
```

```
$ echo unchi or unko? | ./unkothink -s 2
 ----------------
| unchi or unko? |
 ----------------
  ○
   ○
   人
  (__)
 (____)
```

# date_nontp

<a id="date_nontp"></a>

HTTPのHEADリクエストを指定したサーバーに送信して、返ってきたヘッダーから時刻情報を抜き出して出力します。

## Description

```
date_nontp [URL]
```

HTTPのHEADリクエストを指定したサーバーに送信して、返ってきたヘッダーから時刻情報を抜き出して出力します。
リンクを省略した場合は、`www.it-chiba.ac.jp`にリクエストを送信します。
~~NTPまでフィルタリングしやがるからこんなコマンドを作ったんだぞ~~

## Usage

```
$ ./date_nontp cit.manaba.jp
Thu, 24 Nov 2022 05:42:41 GMT
```

dateコマンドと組み合わせることで、NTPによる時刻合わせができない環境でも、システムの時刻を合わせることができます。

```
$ sudo date -s "$(./date_nontp)"
```

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2022 Aso Hidetoshi
