#소금물 농도 구하기

salt <- 50
water <- 100
result <- salt / (salt + water) * 100
cat ("소금의 양=",salt,"물의 양=",water,"소금물의 농도:",result,"%")

