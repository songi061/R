#소금물 농도 구하기

salt <- 50
water <- 100
result <- salt / (salt + water) * 100
cat ("소금=",salt,"물=",water,"농도:",result,"%")

