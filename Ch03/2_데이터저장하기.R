#날짜 : 2022/04/18
#이름 : 강태호
#내용 : ch03. 데이터 입출력 - 데이터 저장하기 교재 p101

#R제공 내장 데이터셋
data()

iris
write.csv(iris, '../file/iris_dataset.csv', quote = F)

Titanic
help("Titanic")
View(Titanic)
write.csv(Titanic, '../file/Titanic_dataset.csv', quote = F)
