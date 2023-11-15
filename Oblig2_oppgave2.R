data <- read.table("https://www.uio.no/studier/emner/matnat/math/STK1110/data/temp.txt", header=T)
#boxplot(data, ylab= "Kroppstemperatur", main="Kroppstemperatur hos menn & kvinner")

# hist(data$Menn, freq = FALSE, col="blue", xlab="Temperatur i Celsius", 
#      ylab="#",main="Kroppstemperatur hos menn")
# 
# curve(dnorm(x, mean = mean(data$Menn), sd = sd(data$Menn)),
#       col = "green",
#       lwd = 2,
#       add = TRUE)
# 
# hist(data$Kvinner, freq = FALSE, col="blue", xlab="Temperatur i Celsius", 
#      ylab="#",main="Kroppstemperatur hos kvinner")
# curve(dnorm(x, mean = mean(data$Kvinner), sd = sd(data$Kvinner)),
#       col = "green",
#       lwd = 2,
#       add = TRUE)

# m = 10
# SP = ((m-1)/(2*m-2))*(var(data$Kvinner)+var(data$Menn))
# Tvalue = (mean(data$Kvinner)-mean(data$Menn))/(sqrt(SP*(2/m)))
# 
# print(round(c(SP, Tvalue), 4))

#pvalue = 2*pt(Tvalue, df=18, lower.tail = F)

# CF = qt(0.025, 18, lower.tail = FALSE)
# error = CF*sqrt((var(data$Kvinner) + var(data$Menn))/10)
# diff = mean(data$Kvinner)-mean(data$Menn)
# leftside <- diff - error
# rightside <- diff + error
# print(c(leftside, rightside))
#t.test(x = data$Kvinner, y=data$Menn, mu = 0, paired = FALSE, var.equal = TRUE, conf.level = 0.95)

# v = ((var(data$Menn) +var(data$Kvinner))/m)^2/(((var(data$Menn)^2 + var(data$Kvinner)^2)/(10^2))/(9))
# pvalue2 = 2*pt(Tvalue, df=v, lower.tail = F)
# CF2 = qt(0.025, v, lower.tail = FALSE)
# error2 = CF2*sqrt((var(data$Kvinner) + var(data$Menn))/m)
# diff = mean(data$Kvinner)-mean(data$Menn)
# l2<- diff - error2
# r2 <- diff + error2
# print(pvalue2)
# print(c(l2, r2))
# t.test(x = data$Kvinner, y=data$Menn, mu = 0, paired = FALSE, var.equal = FALSE, conf.level = 0.95)

# Fratio = var(data$Menn)/var(data$Kvinner)
# # alpha = 0.05
# # fcrit = qf(alpha/2,9,9, lower.tail = F)
# PvalueF = 2*pf(Fratio, df1=9, df2=9, lower.tail = F)
# print(PvalueF)
# var.test(data$Menn, data$Kvinner)
N = 31
diff <- -3.26
stdev <- 8.81
SD <- stdev/sqrt(N)
tstar = diff/SD
pval = 2*pt(abs(tstar),df = 30, lower.tail = F)

tcrit <- qt(.025, df = 30)
error = abs(tcrit*SD)
lside <- diff - error
rside <- diff + error
print(c(lside, rside))