# 環境設定(10分程度)

</br>

## Cluster衛星データ解析用プログラムのダウンロード
ホームディレクトリ以下の`.idl`において以下のコマンドを実行し、プログラムをダウンロードする。
```
git clone https://github.com/HarutoKoike/DD6_2022
```
gitが入っていない場合は、以下のコマンドでインストールする。
```
sudo apt-get install git
```

## その他の設定
`.idl/DD6_2022`の中にある`dd6_setup.sh`をroot権限で実行する。
パスワードを聞かれるので、PCを起動した時に入力するパスワードを入力する。
```
cd DD6_2022
sudo ./dd6_setup.sh
```
bashの設定を更新する。
```
source ~/.bashrc
```

</br>
</br>


## SPEDASのインストール
SPEDAS([https://spedas.org/blog/](https://spedas.org/blog/))は、時系列データ解析・可視化のためのライブラリである。</br>
周波数解析などの時系列データの解析手法が簡単に実装できるようになっており、多くの研究者が利用している。

今回の演習で用いるIDL8.0に対応しているversion 3.0をインストールする。　</br>
`~/.idl`において以下のコマンドを実行する。
```
wget http://spedas.org/downloads/spedas_3_00.zip
unzip spedas_3_00.zip
``` 



</br>
</br>

## Cluster衛星のデータベースへのアクセス権限の設定
Cluster衛星のデータベースはEuropean Space Agency(ESA)によって管理されており、利用にはユーザー登録が必要。
[https://www.cosmos.esa.int/web/csa/register-now](https://www.cosmos.esa.int/web/csa/register-now)から登録する。 </br>
メールで送られてくるユーザー名と自分で設定したパスワードを控えておく。
データのダウンロードの際にプログラムから登録情報を読み込むため、ホームディレクトリに`csa_info.csv`というファイルを作りユーザー名とパスワードをcsv形式で書き込む。
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

# 参考になるリンク
* IDLの全プロシージャのドキュメント(IDLのライセンスを管理しているL3HARRIS社のページ) [https://www.l3harrisgeospatial.com/docs/routines-76.html](https://www.l3harrisgeospatial.com/docs/routines-76.html)
* SPEDAS講習会の資料  [http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf](http://www.iugonet.org/data/workshop/20190912/mti_20190912_analysis_session_text.pdf)
* SPEDASの日本コミュニティのページ [https://github.com/spedas-j/member_contrib/wiki/spedas_useful_command](https://github.com/spedas-j/member_contrib/wiki/spedas_useful_command)
* SPEDASの全プロシージャのドキュメント [http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html](http://themis.ssl.berkeley.edu/socware/spedas_5_0/idl/_spd_doc.html)  
