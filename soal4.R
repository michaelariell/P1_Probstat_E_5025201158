#soal no 4

# a. Diketahui x = 2 dan df = 10, fungsi probabilitas chi square
x = 2
df = 10
dchisq(x , df)

# b. Histogram chi square dengan 100 data random
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Of Chisquare")

# C. nilai rataan dan varians
#mean
mean1 = df
mean1

#variance
var1 = 2*df
var1

