This README file contains information on the contents of the meta-am3352-aki layer.

# meta-am3352-akiについて

秋月電子で販売している(いた？) 「無線モジュール付きSoc基板＋白色プラスチックケース」をYoctoProjectで動かすためのレイヤ。

下記に対応している。

* u-bootの起動(u-boot_2022.01)
* Linuxの起動(linux-yocto_5.15)
* SPIフラッシュ(25Q128JVSQ)
* Wi-SUNモジュール(MB-RL7023-11)
* USBモデム(SARA-U201)
* ユーザーLED

下記のYoctoProjectのバージョン対応している

* kirkstone(4.0)

# 使用方法

## ホストマシンの設定

YoctoProjectのビルド環境構築は下記を参照

https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html

## 環境構築

```
$ mkdir ~/yocto/aki-soc
$ cd ~/yocto/aki-soc
$ git clone git://git.yoctoproject.org/poky.git -b kirkstone
$ source poky/oe-init-build-env
```

## meta-am3352-akiの組み込み

```txt
$ bitbake-layers add-layer /path/to/meta-am3352-aki
```

## local.confの修正

build/conf/local.confに下記を追加。

```txt
MACHINE ?= "am3352-aki"
```

## ビルド

```txt
$ bitbake core-image-minimal
```
