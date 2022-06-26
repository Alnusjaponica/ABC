## 概要
[online-judge-tools](https://github.com/online-judge-tools/oj)というとてもありがたいツールがあったので、自分のために
コンテスト準備の自動化及びコマンドの簡略化を行った。

## 準備
- [online-judge-tools](https://github.com/online-judge-tools/oj)をリンク先の説明に従って導入しておく。


## 使い方
`ABC/`下で、

```bash
source init/initialize_ABC.sh [コンテスト(ABC)の番号]
```
を実行するとAからF問題までのpythonファイルの用意とサンプルケースのダウンロードが行われ、当該番号のABCのための簡略化コマンドが設定される
（ターミナルを終了するとこの簡略化コマンドは消去される）。

サンプルケースのチェックは、
```
check [問題]
```

コードの提出は、
```
submit [問題]
```
で行える。なお、提出時には確認のために文字列をターミナルに打ち込むことが求められるので、続行する場合は指示に従う。

### 例
例えば、`source init/initialize_ABC.sh 257`のように実行すると、以下のようにファイルが生成される。

<pre>
257
├── ABC257_a.py 
├── ...
├── ABC257_f.py
└── samples
    ├── test_a
    │     ├── ...
    ├── ...
    └── test_f
           ├── ...
</pre>
`check f`のように実行することで、`ABC257_f.py`がサンプルケースを通るか確認でき、`submit f`で`ABC257_f.py`に書いたコードを提出できる。
