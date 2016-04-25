# LaIW20160427
このページは、2016/04/27に行われた、ライフ&インフォ女子の会の「さらに複雑なグラフの作図、解析結果の共有、記録」の講義資料です

# 必要なソフトウェア
以下のソフトウェアがあらかじめインストールされている必要があります。なお、OSはMac OS Xを想定しています

- R : 本講義で説明するコードの実行
- R-Studio : レポート作成
- Latex環境 : レポートのpdf形式への変換
- pandoc : レポートの様々な形式への変換

Latex環境は、[MacTex](https://tug.org/mactex/)の、MacTeX.pkgをダウンロードの上、インストールしてください

pandocはR-Studioインストール時に、導入されるらしいですが、もし入っていない場合は、Macのhomebrewコマンドで以下のように実行してください

```{bash}
brew install pandoc
```

# 必要なパッケージのインストール

Rを起動します

```{r}
R
```

パッケージをインストールします

```{r}
install.packages("ggplot2")
install.packages("reshape")
install.packages("GGally")
install.packages("pairsD3")
install.packages("scatterplot3d")
install.packages("animation")
install.packages("rgl")
install.packages("plotly")
```

# 講義中で利用したスライドについて
"ライフ&インフォ女子会.key"、または"ライフ&インフォ女子会.pdf"を参照してください

# 講義中で利用したコードについて
"Tsuyuzaki.R"に全てかかれています。Rのコンソール画面にコピー&ペーストしてご利用ください

# 講義中で説明したレポートについて
"静的なレポート例.Rmd"、"Irisの個体差.Rmd"がそれに相当します。R-Studioで開いた後に、各フォーマットに変換してください
