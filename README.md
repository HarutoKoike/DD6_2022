# 解析準備

## Cluster衛星データ解析用プログラムのダウンロード
！　gitコマンドが入っているか確認 </br>
以下のコマンドを実行し、プログラムをダウンロードする。
```
cd ~/.idl
git clone https://github.com/HarutoKoike/DD6_2022
```
※　~はホームディレクトリの意味。


## SPEDASのインストール
SPEDAS(https://spedas.org/blog/ )は、時系列データ解析用のプログラム群である。</br>
周波数解析などの時系列データを扱う際には必須の手法が簡単に実装できるようになっており、
衛星データ解析を行う研究者の多くが利用している。

現在の最新版(version 5.0)をインストールする。　</br>
先ほどと同じディレクトリで、以下のコマンドを実行する。
```
wget http://spedas.org/downloads/spedas_5_0.zip
unzip spedas_5_0.zip
``` 


## データの保存先
今回はホームディレクトリに`data`というディレクトリを作り、そこにダウンロードしてきたファイルを保存する。
保存先のディレクトリのパスを`DATA_PATH`という環境変数で指定する。
以下の内容を`~/.barhrc`に書き込み、`source`コマンドで変更を反映させる。
```bash 
export DATA_PATH=$HOME/data
```

## Cluster衛星のデータベースへのアクセス権限
Cluster衛星のデータベースはEuropian Space Agency(ESA)によって管理されており、利用にはユーザ登録が必要。
[https://www.cosmos.esa.int/web/csa/register-now](https://www.cosmos.esa.int/web/csa/register-now)から登録する。 </br>
! パスワードとユーザ名の入力は、プログラムに直打ち？　検討





# その他リンク
* [http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf](http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf) SPEDAS講習会の資料 
* [http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html](http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html)  SPEDASの全プロシージャのドキュメント
