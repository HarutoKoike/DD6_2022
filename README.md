# 解析準備(10分程度)

</br>

## Cluster衛星データ解析用プログラムのダウンロード
！　メモ　gitコマンドが入っているか確認 </br>
以下のコマンドを実行し、プログラムをダウンロードする。
```
cd ~/.idl
git clone https://github.com/HarutoKoike/DD6_2022
```
※　~はホームディレクトリの意味。
</br>
</br>


## SPEDASのインストール
SPEDAS(https://spedas.org/blog/ )は、時系列データ解析・可視化のためのライブラリである。</br>
周波数解析などの時系列データの解析手法が簡単に実装できるようになっており、
多くの研究者が利用している。

現在の最新版(version 5.0)をインストールする。　</br>
先ほどと同じディレクトリで、以下のコマンドを実行する。
```
wget http://spedas.org/downloads/spedas_5_0.zip
unzip spedas_5_0.zip
``` 
</br>
</br>


## データの保存先
今回はホームディレクトリに`data`というディレクトリを作り、そこにダウンロードしてきたファイルを保存する。
保存先のディレクトリのパスを`DATA_PATH`という環境変数で指定する。
以下の内容を`~/.barhrc`に書き込み、`source`コマンドで変更を反映させる。
```bash 
export DATA_PATH=$HOME/data
```
</br>
</br>

## Cluster衛星のデータベースへのアクセス権限
Cluster衛星のデータベースは*European Space Agency(ESA)*によって管理されており、利用にはユーザ登録が必要。
[https://www.cosmos.esa.int/web/csa/register-now](https://www.cosmos.esa.int/web/csa/register-now)から登録する。 </br>
!メモ　 パスワードとユーザ名の入力は、プログラムに直打ち？　検討
</br>
</br>
</br>

## 動作確認
以上の工程が問題なく完了できたら、プログラムが正常に動くかどうかを確認する。</br>
コマンドラインで`idl`と入力し、idlが起動したら以下のコマンドを実行する。
```idl
.r check_dd6
```
データのダウンロードが行われ、プロットが出現したらOK。


<br />
<br />

# 参照リンク
* SPEDAS講習会の資料  [http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf](http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf) 
* SPEDASの全プロシージャのドキュメント [http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html](http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html)  
