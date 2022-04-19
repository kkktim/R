#날짜 : 2022/04/19
#이름 : 강태호
#내용 : Ch05. 데이터 시각화 - 박스상자 교재 p148

cars
View(cars)

dist <- cars[,2]
dist

boxplot(dist, main='제동거리리')
boxplot.stats(dist)

iris
View(iris)
boxplot(data=iris, Sepal.Length ~ Species)


#교재 p148 ~ p149

#range = 0 속성은 최소값과 최대값을 점섬으로 연결
boxplot(VADeaths, range = 0)

#notch = TRUE 일 때
boxplot(VADeaths, range = 0, notch = T)
abline(h = 37, ity = 3, col = 'red')

#VADeath 데이터 셋의 요약 통계량 보기
summary(VADeaths)
