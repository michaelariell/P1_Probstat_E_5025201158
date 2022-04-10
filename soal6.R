#soal no 6

# a. Diketahui n = 100, m = 50, std = 8
n = 100
m = 50
std = 8

#data <- c(1,2,4,2,6,3,10,11,5,3,6,85)
data <- rnorm(100,50,8)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="red")

# b. Generate histogram dengan breaks 50 dengan format penamaan
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201158_Michael Ariel Manihuruk_Probstat_E_DNhistogram")

# c. Nilai Varian dari hasil generate random nilai Distribusi Normal
var(x)