#날짜 : 2022/04/20
#이름 : 강태호
#내용 : Ch07. EDA와 데이터정제 - EDA 실습 교재 p194

df_exam <- read.csv('../file/exam.csv')
df_exam

#View()
View(df_exam)

#head, tail
head(df_exam)
tail(df_exam)

#dim
dim(df_exam)

#str
str(df_exam)

#summuary
summary(df_exam)

#sum
sum(df_exam$math)

#mean
mean(df_exam$english)
