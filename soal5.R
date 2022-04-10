#no5

# a. Fungsi probabilitas dan Distribusi Exponensial lambda = 3
lambda = 3
#jika bilangan random sejumlah n=10
rexp(10,rate = lambda)

# b. Histogram eksponensial 10, 100, 1000, dan 10000 random
#n = 10
set.seed(1)
x1 <- rexp(10,rate = lambda)
hist(x1,
     main = "Histogram Exponesial if n = 10")
#n = 100
set.seed(1)
x2 <- rexp(100,rate = lambda)
hist(x2,
     ylim = c(0,50),
     xlim = c(0,2),
     main = "Histogram Exponesial if n = 100")
#n=1000
set.seed(1)
x3 <- rexp(1000,rate = lambda)
hist(x3,
     ylim = c(0,500),
     xlim = c(0,3),
     main = "Histogram Exponesial if n = 1000")
#n=10000
set.seed(1)
x4 <- rexp(10000,rate = lambda)
hist(x4,
     ylim = c(0,5000),
     xlim = c(0,4),
     main = "Histogram Exponesial if n = 10000")

# c. Nilai rataan dan varians untuk n = 100 dan lamd = 3
n = 100
lamd = 3
data <- rexp(n, rate = lamd)
avg <- mean(data)
avg
va <- var(data)
va

