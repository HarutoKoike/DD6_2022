# 解析準備(10分程度)

</br>

## Cluster衛星データ解析用プログラムのダウンロード
以下のコマンドを実行し、プログラムをダウンロードする。
```
cd ~/.idl
git clone https://github.com/HarutoKoike/DD6_2022
```
~はホームディレクトリの意味。<br>
諸々のセットアップも行うため、DD6_2022のディレクトリの中にある`dd6_setup.sh`を実行する。
```
cd DD6_2022
./dd6_setup.sh
```

</br>
</br>


## SPEDASのインストール
SPEDAS(https://spedas.org/blog/ )は、時系列データ解析・可視化のためのライブラリである。</br>
周波数解析などの時系列データの解析手法が簡単に実装できるようになっており、
多くの研究者が利用している。

現在の最新版(version 5.0)をインストールする。　</br>
`~/.idl`において以下のコマンドを実行する。
```
wget http://spedas.org/downloads/spedas_5_0.zip
unzip spedas_5_0.zip
``` 



</br>
</br>

## Cluster衛星のデータベースへのアクセス権限
Cluster衛星のデータベースはEuropean Space Agency(ESA)によって管理されており、利用にはユーザ登録が必要。
[https://www.cosmos.esa.int/web/csa/register-now](https://www.cosmos.esa.int/web/csa/register-now)から登録する。 </br>
メールで送られてくるユーザ名と自分で設定したパスワードを控えておく。
`~/.idl`以下にある`csa_info.csv`というファイルにユーザ名とパスワードをcsv形式で書き込む。
```
username, password
```
</br>
</br>
</br>

## 動作確認
以上の工程が完了したら、プログラムが正常に動くかどうかを確認する。</br>
コマンドラインで`idl`と入力し、idlが起動したら以下のコマンドを実行する。
```idl
.r dd6_check
```
データのダウンロードが行われ、プロットが出現したらOK。


<br />
<br />

# 参照リンク
* SPEDAS講習会の資料  [http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf](http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf)
* SPEDASの日本コミュニティのページ [https://github.com/spedas-j/member_contrib/wiki/spedas_useful_command](https://github.com/spedas-j/member_contrib/wiki/spedas_useful_command)
* SPEDASの全プロシージャのドキュメント [http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html](http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html)  
