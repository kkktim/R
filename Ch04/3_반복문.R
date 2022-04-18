#날짜 : 2022/04/18
#이름 : 강태호
#내용 : Ch04. 제어문과 함수 - 반복문 교재 p115

#for함수
i <- c(1:10)
for(n in i){
  print(n*10)
  print(n)
}

i <- c(1:10)
for(n in i)
  if(n %% 2 == 0) print(n)

i <- c(1:10)
for(n in i){
  if(n %% 2 == 0){
    next
  }else{
    print(n)
  }
}

no <- c(1:5)
name <- c('홍길동', '이순신', '강감찬', '유관순', '김유신')
score <- c(85, 78, 89, 90, 74)
exam <- data.frame(학번=no, 이름=name, 성적=score)
exam
name <- c(names(exam))
for(n in name){
  print(n)
}

score <- c(85, 95, 98)
name <- c('홍길동', '이순신', '강감찬')

i <- 1
for(s in score){
  cat(name[i], "->", s, "\n")
  i <- i + 1
}

#while 함수
i = 0
while(i<10){
  i <- i + 1
  print(i)
}
