
library(svDialogs)
height <- dlgInput('Input height(cm)')$res     #키 입력하는 입력창 생성, 값 저장
weight <- dlgInput('Input weight(kg)')$res
height <- as.numeric(height)                  #정수형으로 변환
weight <- as.numeric(weight)
height <- height / 100
bmi <- weight/(height^2) 
sink('bmi.txt', append = T)             #새로운 결과를 마지막에 이어붙이기
cat(height*100, weight, bmi)
cat('\n')
sink()
result <- read.table('bmi.txt', sep=" ")
result
names(result) <- c('height','weight','bmi')
write.table(result, 'bmi_new.txt', row.names = F)     #행번호는 저장하지 않음
