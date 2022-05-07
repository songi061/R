setwd('C:/Rworks')

print('Begin work')
a <- 10; b <- 20

#프로그램 중간에 파일로 출력하고 싶은 부분에서 sink함수를 위아래로 입력, 
#내용의 맨 마지막에 덧붙여서 출력
sink('result.txt',append =T)

cat('a+b=', a+b,'\n')

sink()

#sink함수가 끝났으므로 결과를 파일이 아닌 화면에 출력
cat('hello world \n')

sink('result.txt', append = T)
cat('a*b=', a*b, '\n')
sink()

#화면 출력
print('End work')
