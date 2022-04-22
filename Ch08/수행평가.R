library(dplyr)

df_exam <- read.csv('../file/exam.csv')
df_exam

rs1 <- df_exam %>% select(math, english, science)
rs1

rs2 <- df_exam %>% filter(class == 1)
rs2

rs3 <- df_exam %>% select(english) %>% filter(english >= 60 &  english < 80)
rs3

rs4 <- df_exam %>% filter(science >= 60 & science < 80)
rs4

rs5 <- df_exam %>% filter(math >= 60) %>% select(class, id, math) %>% arrange(desc(math))
rs5

rs6 <- df_exam %>% group_by(class) %>% summarise(mean(math), mean(english), mean(science))
rs6

rs7 <- df_exam %>% mutate(total = math + english + science)
rs7

rs8 <- rs7 %>% mutate(mean = total / 3)
rs8

rs9 <- rs8 %>% mutate(grade = ifelse(mean >= 90, 'A', 
                              ifelse(mean >= 80, 'B', 
                              ifelse(mean >= 70, 'C', 
                              ifelse(mean >= 60, 'D', 'F')))))
rs9
