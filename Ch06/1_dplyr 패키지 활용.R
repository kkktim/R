#날짜 : 2022/04/19
#이름 : 강태호
#내용 : Ch06. 데이터 조작 - dplyr 패키지 실습 p169

install.packages('dplyr')
library(dplyr)

df_exam <- read.csv('../file/exam.csv')
df_exam
View(df_exam)

#select
rs1 <- df_exam[, 3]
rs1

rs2 <- df_exam %>% select(math)
rs3 <- df_exam %>% select(english)
rs4 <- df_exam %>% select(english, science)
rs5 <- df_exam %>% select(everything())

rs2;rs3;rs4;rs5

#filter
r1 <- df_exam %>% select(everything()) %>% filter(class==1)
r1
#영어점수 60점 이상 그리고 80점 미만
r2 <- df_exam %>% select(english) %>% filter(english >= 60 & english < 80)
r2
#과학점수 60점 이상 또는 80점 이하
r3 <- df_exam %>% select(science) %>% filter(science >=60 | science <=80)
r3
#class 가 1반 학생의 수학점수만 출력
r4 <- df_exam %>% filter(class==1) %>% select(math)
r4

#arrange
res1 <- df_exam %>% select(everything()) %>% arrange(math)
res1
#select(everything()) 생략
res2 <- df_exam %>% arrange(desc(math))
res2

#mutate - 파생변수
result1 <- df_exam %>% mutate(total = math + english + science)
result1
View(result1)

result2 <- result1 %>% mutate(mean = total / 3)
result2

result3 <- result2 %>% mutate(grade = ifelse(mean >= 90, 'A', 
                                      ifelse(mean >= 80, 'B', 
                                      ifelse(mean >= 70, 'C', 
                                      ifelse(mean >= 60, 'D','F')))))
result3
View(result3)

#summarise
df_exam %>% summarise(sum(math))
df_exam %>% summarise(mean(math))

#group_by
gr1 <- df_exam %>% group_by(class) %>% summarise(sum(math))
gr1

gr2 <- df_exam %>% group_by(class) %>% summarise(mean(math), mean(english), mean(science))
gr2

#inner_join
df_teacher <- data.frame(class = c(1, 2, 3, 4, 5), 
                         teacher = c('김유신', '김춘추', '장보고', '강감찬', '이순신'))
df_teacher
View(df_teacher)

joined <- inner_join(df_exam, df_teacher, by='class')
View(joined)
