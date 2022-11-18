# 解析の準備
## Cluster衛星データ解析用プログラムのダウンロード
！　gitコマンドが入っているか確認 </br>
以下のコマンドを実行し、プログラムをダウンロードする。
```
cd ~/.idl
git clone https://github.com/HarutoKoike/DD6_2022
```


## SPEDASのインストール
SPEDAS( https://spedas.org/blog/ )は、時系列データ解析用のプログラム群である。</br>
周波数解析などの時系列データを扱う際には必須の手法が簡単に実装できるようになっている。</br>
さらには得られた結果のプロットや面倒な衛星データのダウンロードのためのモジュールも含まれているため、衛星データ解析にはほぼ必須なツールと言って良い。
Pythonで言うNumpyやmatplotlibのような感じ。 </br>

現在の最新版(version 5.0)をインストールする。
先ほどと同じディレクトリで、以下のコマンドを実行する。
```
wget http://spedas.org/downloads/spedas_5_0.zip
unzip spedas_5_0.zip
``` 
