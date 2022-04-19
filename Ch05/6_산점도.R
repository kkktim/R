#날짜 : 2022/04/19
#이름 : 강태호
#내용 : Ch05. 데이터 시각화 - 산점도 교재 p154

mtcars
View(mtcars)

wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt, mpg)
plot(wt, mpg, col = 'red', pch = 4)

iris
df_iris <- iris[, 3:4]
df_iris

species <- as.numeric(iris$Species)
species

color <- c('red', 'green', 'blue')

plot(df_iris, pch=16, col=color[species] )

#교재예제
#기본 산점도 시각화
price <- runif(10, min = 1, max = 100)
plot(price, col = 'red')

methods("plot")
data("WWWusage")
str(WWWusage)
plot(WWWusage)


# p160
library(UsingR)
data("galton")
galtonData <- as.data.frame(table(galton$child, galton$parent))
head(galtonData)
#칼럼 단위 추출
names(galtonData) = c("child", 'parent', 'freq')
head(galtonData)
#점 크기 확보
plot(parent, child,
     pch = 21, col = 'blue', bg ='green', 
     cex = 0.2 * galtonData$freq, 
     xlab='parent', ylab='child')

#p162
attributes(iris)
pairs(iris[iris$Species == "virginica", 1:4])
pairs(iris[iris$Species == "setosa", 1:4])

#p163 3차원 산점도 시각화하기
install.packages("scatterplot3d")
library(scatterplot3d)
#꽃의 종류별 분류
iris_setosa = iris[iris$Species == "setosa",]
iris_versicolor = iris[iris$Species == "versicolor",]
iris_virginica = iris[iris$Species == "virginica",]
#3차원 틀 생성하기
d3 <- scatterplot3d(iris$Petal.Length,
                    iris$Sepal.Length,
                    iris$Sepal.Width,
                    type = 'n')
#3차원 산점도 시각화
d3$points3d(iris_setosa$Petal.Length,
            iris_setosa$Sepal.Length,
            iris_setosa$Sepal.Width,
            bg='orange', pch=21)
d3$points3d(iris_versicolor$Petal.Length,
            iris_versicolor$Sepal.Length,
            iris_versicolor$Sepal.Width,
            bg='blue', pch=23)
d3$points3d(iris_virginica$Petal.Length,
            iris_virginica$Sepal.Length,
            iris_virginica$Sepal.Width,
            bg='green', pch=25)
