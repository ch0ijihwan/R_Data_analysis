out.val <- boxplot.stats(st$Income)$out     # 특이값 추출
st$Income[st$Income %in% out.val] <- NA     # 특이값을 na로 대체(특별연산자)d(st)
newdata <- st[complete.cases(st),]          # NA?? ?가 포함된 행 제거wdata) 