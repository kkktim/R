#날짜 : 2022/04/18
#이름 : 강태호
#내용 : Ch04. 제어문과 함수 - 함수정의 교재 p118

#사용자 정의 함수
f1 <- function(){
  cat("매개변수가 없는 함수")
}
f1()

f3 <- function(x, y){
  add <- x + y
  return(add)
}
add <- f3(10, 20)
add

#기술통계량을 계산하는 함수 정의
#1단계 파일 불러오기
setwd("../file")
test <- read.csv("book_test.csv", header = TRUE)
head(test)

#2단계 요약통계량 구하기
summary(test)

#3단계 특정 변수의 빈도수 구하기
table(test$A)

#4단계 각 컬럼 단위의 빈도수와 최대값, 최소값 계산을 위한 사용자 함수 정의
data_pro <- function(x){
  for(idx in 1:length(x)){
    cat(idx, "번째 칼럼의 빈도 분석 결과")
    print(table(x[idx]))
    cat("\n")
  }
  
  for(idx in 1:length(x)){
    f <- table(x[idx])
    cat(idx, "번째 칼럼의 최대값/최소값\n")
    cat("max = ", max(f), "min=", min(f), "\n")
  }
}
data_pro(test)
