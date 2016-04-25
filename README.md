# LaIW20160427
このページは、2016/04/27に行われた、ライフ&インフォ女子の会の「さらに複雑なグラフの作図、解析結果の共有、記録」の講義資料です

# 必要なソフトウェア
以下のソフトウェアがあらかじめインストールされている必要があります。なお、OSはMac OS Xを想定しています

1. R : 本講義で説明するコードの実行
2. R-Studio : レポート作成
3. Latex環境 : レポートのpdf形式への変換
4. pandoc : レポートの様々な形式への変換

Rは、[CRAN](https://cran.ism.ac.jp)の、Download R for (Mac) OS Xで、R-3.2.4.pkgをダウンロードの上、インストールしてください

R-Studioは、[R-Studio](https://www.rstudio.com/products/rstudio/download/)の、RStudio Mac OS X (64bit)をダウンロードの上、インストールしてください

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
[ライフ&インフォ女子会.key](https://www.dropbox.com/s/p5aa2xrfxbsaece/%E3%83%A9%E3%82%A4%E3%83%95%26%E3%82%A4%E3%83%B3%E3%83%95%E3%82%A9%E5%A5%B3%E5%AD%90%E4%BC%9A.key?dl=0)、または[ライフ&インフォ女子会.pdf](https://www.dropbox.com/s/c5iecvpa3largwk/%E3%83%A9%E3%82%A4%E3%83%95%26%E3%82%A4%E3%83%B3%E3%83%95%E3%82%A9%E5%A5%B3%E5%AD%90%E4%BC%9A.pdf?dl=0)を参照してください

# 講義中で利用したコードについて
"Tsuyuzaki.R"に書かれています。Rのコンソール画面にコピー&ペーストしてご利用ください

# 講義中で説明したレポートについて
"静的なレポート例.Rmd"、"Irisの個体差.Rmd"がそれに相当します。R-Studioで開いた後に、KNIT TO HTMLなどのボタンで、各フォーマットに変換してください