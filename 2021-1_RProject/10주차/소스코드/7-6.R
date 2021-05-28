head(x)
x[!complete.cases(x),]              # NA가 포함된 행들 출력
y <- x[complete.cases(x),]          # NA가 포함된 행들 제거d(y)                             # ???�새로운 데이터셋 확인
