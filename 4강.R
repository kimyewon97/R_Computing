#평균 구하기
aval = c(5, 4, 7, 6, 8, 10, 11, 0, 7, 18)
mean(aval)
# 평균 결과: [1] 7.6
sum(aval)
# 총합 결과: [1] 76

# 이상값이 포함된 평균
aval2 = c(5, 4, 7, 6, 8, 10, 11, 0, 7, 18, 100) # 이상값 100
mean(aval2)
# 평균 증가 결과: [1] 16

#절사평균(이상값 영향 줄이기)
aval = c(5, 4, 7, 6, 8, 10, 11, 0, 7, 18)
mean(aval)
# 평균 결과: [1] 7.6
mean(aval, trim = 0.10)
# 10% 절사평균 결과: [1] 7.25
mean(aval, trim = 0.20)
# 20% 절사평균 결과: [1] 7.166667
median(aval)
# 중앙값 결과: [1] 7

# median(): 중앙값
# 자료의 수를 n이라 할 때 (n+1)/2 번째의 값을 중앙값으로 함.
aval = c(5, 4, 7, 6, 8, 10, 11, 0, 9, 14, 100)
median(aval)
# 결과: [1] 8

# 산포도 측도
aval = c(5, 4, 7, 6, 8, 10, 11, 0, 7, 18)
sd(aval) # 표준편차 -> 데이터 퍼짐 정도 측정
# 결과: [1] 4.788876
IQR(aval) # IQR (사분위범위 = Q3 - Q1)
# 결과: [1] 4.25
summary(aval) # 다섯숫자요약
# 결과
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 0.00    5.25    7.00    7.60    9.50   18.00 

# 사분위수: 제1사분위수, 중앙값, 제3사분위수
quantile(aval, prods = c(0.25, 0.5, 0.75))
# 결과
# 0%   25%   50%   75%  100% 
# 0.00  5.25  7.00  9.50 18.00 

# 히스토그램 그리기
# 평균 0, 표준편차 1인 정규분포 난수 200개 생성
a = rnorm(200)
hist(a, col = 'red')

# 줄기-잎 그림(stem-and-leaf plot)
score = scan("c:/data/dataintr0/score.txt")
# 결과: Read 65 items
stem(score)
# 결과
# The decimal point is 1 digit(s) to the right of the |
# 1 | 00458
# 2 | 1333458889
# 3 | 0355789
# 4 | 11133456678
# 5 | 111222333444566788
# 6 | 14779
# 7 | 33478
# 8 | 29
# 9 | 09

?stem
starting httpd help server ... done

# 줄기-잎 그림에서 scale을 조절하면 세분화 가능
stem(score, scale = 2)
# 결과
# The decimal point is 1 digit(s) to the right of the |
# 1 | 004
# 1 | 58
# 2 | 13334
# 2 | 58889
# 3 | 03
# 3 | 55789
# 4 | 111334
# 4 | 56678
# 5 | 111222333444
# 5 | 566788

# 다섯숫자요약(최소값, 최대값, 중앙값, 제1사분수, 제3사분수)
# 상자그림 그리기
score = scan("c:/data/dataintro/score.txt")
stem(score) #줄기-잎 그림
# 결과
# The decimal point is 1 digit(s) to the right of the |
# 1 | 00458
# 2 | 1333458889
# 3 | 0355789
# 4 | 11133456678
# 5 | 111222333444566788
# 6 | 14779
# 7 | 33478
# 8 | 29
# 9 | 09
summary(score) # 다섯숫자요약 
# Min. 1st Qu. Median Mean 3rd Qu. Max.
# 10.00 33.00 48.00 47.45 57.00 99.00
boxplot(score) # 상자그림
