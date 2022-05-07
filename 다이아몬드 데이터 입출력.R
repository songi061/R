#다이아몬드 정보 제공하는 예제

#현재 파일 경로
getwd()

#저장 경로 변경
setwd('C:/Rworks')

library(ggplot2)
str(diamonds)

#diamonds 데이터셋의 cut이 primium이고 carat이 2이상인 값들만 저장
diamonds.new <- subset(diamonds, cut == 'Premium'&carat >= 2)
diamonds.new

#추출한 데이터를 파일로 저장 , 행 이름은 제외
write.csv(diamonds.new, 'shiny_diamonds.csv', row.names = F)

#저장한 파일을 불러와 변수에 저장 , 파일의 첫번째 행은 값이 아닌 열이름을 의미
diamonds.load <- read.csv('shiny_diamonds.csv', header = T)

#color의 D를 제외한 값들을 변수에 저장
diamonds.new <- subset(diamonds.load, color != 'D')

library(xlsx)

#변수의 값들을 엑셀로 저장
write.xlsx(diamonds.new, 'shiny_diamonds.xlsx', row.names= F)

