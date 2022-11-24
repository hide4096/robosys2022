# 未来ロボティクス学科セメスター4 ロボットシステム学の課題

[![test](https://github.com/hide4096/plus_stdin/actions/workflows/test.yml/badge.svg)](https://github.com/hide4096/plus_stdin/actions/workflows/test.yml)

ロボットシステム学の課題で作ったコマンドたちです

[plus](#plus)

[unkosay](#unkosay)

[date_nontp](#date_nontp)

## Download

```
git clone https://github.com/hide4096/plus_stdin.git
cd plus_stdin
```

## 

# plus

<a id="plus"></a>

標準入力から数字を読み込み、それらを合計して出力します。

## Usage

```
$ seq 10 | ./plus
55.0
```

# unkosay

<a id="unkosay"></a>

う○このAAに吹き出しをつけて喋らせられるcowsayライクな~~クソ~~コマンドです。

## Description

```
unkosay [-s] メッセージ
  -s  うんこの段数
```
コマンドの後に入力した内容を喋っているう○このASCII画像を生成します。
引数なしで実行した場合は、標準入力から読み込みます。

-s オプションによって生成されるう○この段数が変化します。

## Usage

```
$ ./unkosay -s 4 unkodesu
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
$ echo unchi or unko? | ./unkosay -s 2
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
$ ./date_nontp
Thu, 24 Nov 2022 05:42:41 GMT
```

```
$ sudo date -s "$(./date_nontp)"
```
dateコマンドと組み合わせることで、NTPによる時刻合わせができない環境でも、システムの時刻を合わせることができます。


- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2022 Aso Hidetoshi
