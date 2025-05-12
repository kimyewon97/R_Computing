#수학 점수, 물리 점수
math = c(66, 64, 48, 46, 78, 60, 90, 50, 66, 70)
physics = c(70, 68, 46, 48, 84, 64, 92, 52, 68, 72)
#수학 점수와 물리 점수 사이의 상관관수 계산
cor(math, physics)
# 결과: 0.9918056

#산점도 그리기
plot(math, physics, pch=16, col="blue", main="(수학,물리)산점도")
abline(lm(physics~math)) #회귀 직선
# identify() 함수: 그래프에서 점을 클릭해 값을 확인
> identify(math, physics) 

#데이터 불러오기
# Read data file
ex12 <- read.csv("c:/data/ex1-2.csv") #파일 경로
head(ex12) # 데이터 앞부분 확인
# 결과
# id math physics
# 1 1 66 70
# 2 2 64 68
# 3 3 48 46
# 4 4 46 48
# 5 5 78 84
# 6 6 60 64 
plot(ex12$math, ex12$physics, pch=19, col="blue")
title("\n Scatter Plot of (math, physics)\n")

cor(ex12$math, ex12$physics)
# 결과: 0.9918056
# 상관 분석
cor.test(ex12$math, ex12$physics)
#결과
# Pearson's product-moment correlation
# data: ex12$math and ex12$physics
# t = 21.958, df = 8, p-value = 1.953e-08
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
# 0.9644404 0.9981317
# sample estimates:
# cor
# 0.9918056 