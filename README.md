# P1_Probstat_E_5025201158

## Soal 1
### A. Peluang penyurvei bertemu orang yang tidak menghadiri acara vaksinasi. Ketika diketikahui x=3 dan p=0.2
Dapat diselesaikan dengan bantuan fungsi dgeom(). Dengan x adalah orang yang tidak ikut acara vaksinasi dan p  merupakan probabilitas keberhasilan pertama peserta vaksinasi
...
p = 0.2
x = 3

Peluang <- dgeom(x, p)
Peluang
...

### B. Mencari mean dari 10000 data random, prob = 0.20, dan X=3
Dapat menggunakan fungsi rgeom() untuk mendapatkan data random sebanyak n
n = 10000
p = 0.20
m <- mean(rgeom(n, p) == 3)
m

### C. Perbandingan a dan b
Poin a akan menghasilkan nilai peluang yang tetap karena distribusi geometriknya sama
Poin b menghasilkan nilai yang berbeda karena distribusi geometik bernilai acak

### D. Membuat histogram distribusi geometrik dengan X=3 gagal sebelum sukses pertama
Dapat menggunakan fungsi hist() untuk membuat histogramnya
set.seed(0)
hist(rgeom(n, prob = p),
     main="Histogram Geometrik",
     xlim = c(0,25),
     xlab="X",
     col="green",
)

### E. Mencari nilai rataan dan varians dari distribusi geometrik
Untuk mendapatkan nilai rataan/mean dapat menggunakan rumus jumlah data (n) dikali dengan probabilitas. Kemudian untuk mendapatkan nilai varians, dapat menggunakan nilai rataan kemudian dikali dengan komplemen probabilitas
p = 0.2
n = 3

rataan = n/p
rataan

varians = (n-p)/(p^2)
varians

## Soal 2
### a. peluang sembuh 4 pasien
Dapat menggunakan fungsi dbinom()
a <- dbinom(x=4,20,0.2)
a

### B. Gambarkan grafik histogram dari kasus tersebut
Dapat menggunakan bantuan fungsi hist()
data <- rbinom(20,20,0.2)
hist(data,
     xlim = c(0,8))

### C. Mencari nilai rataan dan varians dari distirbusi binom
Menggunakan rumus mencari peluang failure nya dengan mean dan variance theorytical
n=20 ->jumlah pasien
p=0.2 ->peluang
q=1-p ->peluang failure nya

me=n*p //mean theorytical
me

va=n*p*q //variance theorytical
va

## Soal 3
### A. Berapa peluang bahwa 6 bayi akan lahir dirumah sakit ini besok?
Diketahui rata-rata sebanyak 4.5 dan x = 6 yaitu bayi akan lahir. Untuk menghitung dapat menggunakan fungsi dpois()
x = 6
lambda = 4.5
dpois(x,lambda)

### B. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir dirumah sakit ini selama setahun (n = 365)
Dapat menggunakan fungsi geom_histogram() dan scale_x_continuous()+labs()+theme_bw(), dengan n diubah menjadi 365 yaitu hari dalama setahun
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Number of babies born per period',
       y = 'Proportion',
       title = '365 simulated births in a hospital with Pois(lambda = 4.5)') +
  theme_bw()

### C. Perbandingan a dan b
dapat dilihat bahwa hasil simulasi nya sekitar 11.5% (berdasarkan perhitungan dibawah), sedangkan nilai exact nya yaitu 12,8% 
yang artinya sesuai karena nilai simulasi mendekati nilai exact

babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())

### D. Mencari nilai rataan dan varians dari distribusi poisson

lambda

## Soal 4
### A. Fungsi Probabilitas dari Distribusi Chi-Square
Diketahui nilaix = 2 dan df = 10. Kemudian dicari dengan bantuan fungsi dchisq()
x = 2
df = 10
dchisq(x , df)

### B. Histogram dari DistribusiChi-Square dengan 100 data random
Dapat menggunakan fungsi hist() seperti nomor sebelumnya
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Of Chisquare")

### C. Mencari nilai rataan dan varians dari distribusi Chi-Square

mean1 = df
mean1

var1 = 2*df
var1

## Soal 5
### A. Fungsi Probabilitas dari Distribusi Exponensial
lambda = 3

jika bilangan random sejumlah n=10
rexp(10,rate = lambda)  jika bilangan random sejumlah n=10

### B. Histogramdari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
//n = 10
set.seed(1)
x1 <- rexp(10,rate = lambda)
hist(x1,
     main = "Histogram Exponesial if n = 10")
//n = 100
set.seed(1)
x2 <- rexp(100,rate = lambda)
hist(x2,
     ylim = c(0,50),
     xlim = c(0,2),
     main = "Histogram Exponesial if n = 100")
//n=1000
set.seed(1)
x3 <- rexp(1000,rate = lambda)
hist(x3,
     ylim = c(0,500),
     xlim = c(0,3),
     main = "Histogram Exponesial if n = 1000")
//n=10000
set.seed(1)
x4 <- rexp(10000,rate = lambda)
hist(x4,
     ylim = c(0,5000),
     xlim = c(0,4),
     main = "Histogram Exponesial if n = 10000")

### C. Mencari nilai rataan dan varians untuk n = 100 dan lamd = 3
n = 100
lamd = 3
data <- rexp(n, rate = lamd)
avg <- mean(data)
avg
va <- var(data)
va

## Soal 6
### A. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitungZ-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()). 
n = 100
m = 50
std = 8

data <- rnorm(100,50,8)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="red")

### B. Generate Histogramdari DistribusiNormal dengan breaks 50 dan format penamaan sesuai soal
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201158_Michael Ariel Manihuruk_Probstat_E_DNhistogram")

### C. NilaiVarian (σ²) dari hasil generate randomnilaiDistribusiNormal
var(x)
