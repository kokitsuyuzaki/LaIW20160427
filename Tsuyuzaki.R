################################################
######### Part I : ggplot2使用時の注意点 #########
################################################
library("ggplot2")

# これらはOK
# p <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width))
# p <- p + geom_point()
# p

# ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
geom_point()

# これはNG
# ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width))
# + geom_point()

# 値とその属性に分解した、データフレームにする
library("reshape")
testdata <- data.frame(Data_A=runif(100), Data_B=runif(100), Data_C=runif(100))
testdata <- melt(testdata)
ggplot(testdata, aes(x=value, colour=variable, fill=variable)) + geom_density(alpha=0.5)


# setosa, versicolor, virginicaの順にx軸に並ぶ
ggplot(iris,aes(x=Species, y=Sepal.Length, color=Species)) + geom_boxplot()

# virginica, setosa, versicolorの順にしたい場合、順序情報をデータに追記する
Species.order <- c(
	rep(2, length(which(iris$Species == "setosa"))),
	rep(3, length(which(iris$Species == "versicolor"))),
	rep(1, length(which(iris$Species == "virginica")))
	)
edited_iris <- data.frame(iris, Order=Species.order)
ggplot(edited_iris, aes(x=reorder(Species, Order), y=Sepal.Length, color=Species)) + geom_boxplot()

# boxplot(iris[,1:4])と同様の図をggplot2で作図する場合（ggplot2との向き合い方より）
edited_iris2 <- melt(iris)
ggplot(edited_iris2, aes(x=variable, y=value, color=variable, fill=variable)) + geom_boxplot()

##################################################
######### Part II : さらに複雑なグラフの作図 #########
##################################################
# ペアプロット
pairs(iris[,1:4], col=iris.color, pch=16, cex=2)

# ペアプロット（GGally）
library("GGally")
ggpairs(iris, mapping = ggplot2::aes(color=Species, alpha=0.5))

# ペアプロット（pairsD3）
library("pairsD3")
pairsD3(iris[,1:4], group=iris[,5], col=c("red", "green", "blue"))

# PCA
iris.pca <- prcomp(t(iris[,1:4]))

# 3Dプロット（scatterplot3d）
library("scatterplot3d")
library("animation")
saveGIF({
	for(i in 1:30){
			scatterplot3d(iris.pca$rotation[,1:3], color=iris.color, pch=16,
				xlab="PC1", ylab="PC2", zlab="PC3",
				angle=40 + 3.6 * 3 * i
				)
		}
}, movie.name="iris.pca.gif")

# 3Dプロット（rgl）
library("rgl")
plot3d(iris.pca$rotation[,1:3], col=iris.color, size=10)
text3d(iris.pca$rotation[,1:3], text=rownames(iris))

# 3Dプロット（plotly）
library("plotly")
plot_ly(as.data.frame(iris.pca$rotation[,1:3]), x=PC1, y=PC2, z=PC3, type="scatter3d", mode="markers", text=rownames(iris), color=iris[,5])


################################################
######### Part III : 解析結果の共有（） #########
################################################
# Step.1 : Rmd => pdf, html, word
# 日本語で書くには、ヘッダー（YAML記法の部分）の設定を変えないといけない
# 静的な図を埋め込む

# Step.3 : Rmd => Slidy
# 動的な図を埋め込む（htmlしかできない）
# YAMLの編集は必要ない
