#날짜 : 2022/04/18
#이름 : 강태호
#내용 : Ch04. 제어문과 함수 - 조건문 교재 p110

#if 함수
x <- 50 ; y <- 4 ; z <- x*y
if(x*y>=40){
  cat("x * y 의 결과는 40이상 입니다.\n")
  cat("x * y =",z)
}else{
  cat("x*y의 결과는 40미만 입니다. x*y=", z, "\n")
}

score <- scan()

result <- '노력'
if(score > 80){
  result <- '우수'
}
cat('당신의 학점은', result, score)


score <- scan()

if(score >= 90){
  result = "A학점"
}else if(score >=80){
  result = "B학점"
}else if(score >=70){
  result = "C학점"
}else if(score >=60){
  result = "D학점"
}else{
  result = "F학점"
}
cat("당신의 학점은", result)
print(result)


#ifelse 함수
score <- scan()
ifelse(score >= 80, "우수","노력")
ifelse(score <= 80, "우수","노력")

excel <- read.csv('../file/excel.csv', header = T)
q1 <- excel$q1
q1
ifelse(q1 >=3, sqrt(q1),q1)

#swith 함수
empname <- scan(what = "")
switch(empname,
       hong = 250,
       lee = 350,
       kim = 200,
       kang = 400
)

#which 함수
name <- c('kim', 'lee', 'choi', 'park')
which(name == 'choi')

no <- c(1:5)
name <- c('홍길동', '이순신', '강감찬찬', '유관순순', '김유신신')
score <- c(85, 78, 89, 90, 74)
exam <- data.frame(학번=no, 이름=name, 성적=score)
exam
which(exam$이름 == '유관순순')
exam[4,]
