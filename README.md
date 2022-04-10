# P1_Probstat_E_5025201158

## Soal 1
### A. Peluang penyurvei bertemu orang yang tidak menghadiri acara vaksinasi. Ketika diketikahui x=3 dan p=0.2
Dapat diselesaikan dengan bantuan fungsi dgeom(). Dengan x adalah orang yang tidak ikut acara vaksinasi dan p  merupakan probabilitas keberhasilan pertama peserta vaksinasi
p = 0.2
x = 3

Peluang <- dgeom(x, p)
Peluang

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
### A. Diket 20 pasien, prob 0.2, dan s = 4 pasien. Peluang sembuh 4 pasien tersebut adalah?
Dapat menggunakan fungsi dbinom()
n = 20
p = 0.2
s = 4
peluang <- dbinom(s, n, p)
peluang

### B. Gambarkan grafik histogram dari kasus tersebut
Dapat menggunakan bantuan fungsi plot()
n = 20
p = 0.2
x = 0:20
plot(x, dbinom(x, n, p),
     type = 'h',
     main = 'Histogram Distribusi Binomial',
     xlab = 'Sukses',
     ylab = 'Probabilitas',
     col = 'green',
     lwd = 3
)

### C. Mencari nilai rataan dan varians dari distirbusi binom
Menggunakan rumus yang sama dengan nomor sebelumnya
n = 20
p = 0.2
rataan = n*(p)
rataan

varians = n*(p)*(1-(p))
varians

## Soal 3
### A. Berapa peluang bahwa 6 bayi akan lahir dirumah sakit ini besok?
Diket rata-rata sebanyak 4.5 dan x = 6 yaitu bayi akan lahir. Untuk menghitung dapat menggunakan fungsi dpois()
rata = 4.5
x = 6

peluang <- dpois(x, rata)
peluang

### B. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir dirumah sakit ini selama setahun (n = 365)
Dapat menggunakan fungsi hist() seperti nomor sebelumnya, dengan n diubah menjadi 365 yaitu hari dalama setahun
rata = 4.5
n = 365
set.seed(0)
hist(rpois(n, rata),
     main = "Histogram Poisson Bayi",
     xlim = c(0,20),
     col = "green",
)

### C. Perbandingan a dan b
Peluang kelahiran dalam 1 tahun (poin b) lebih rendah daripada kelahiran pada esok harinya. Akan tetapi probabilitas/peluang yang terjadi tidak bebeda signifikan

### D. Mencari nilai rataan dan varians dari distribusi poisson
rata = 4.5

rataan = varians = rata
rataan
varians

## Soal 4
### A. Fungsi Probabilitas dari Distribusi Chi-Square
Diketahui nilaix = 2 dan v = 10. Kemudian dicari dengan bantuan fungsi dchisq
x = 2
v = 10

p <- dchisq(x, v)
p

### B. Histogram dari DistribusiChi-Square dengan 100 data random
Dapat menggunakan fungsi hist() seperti nomor sebelumnya
v = 10
x = 100

hist(rchisq(n, v), 
     main = "Histogram Chi Square",
     xlim = c(0,20),
     col = "green",
     xlab = "X",
     ylab = "V",
)

### C. Mencari nilai rataan dan varians dari distribusi Chi-Square
v = 10

mean = v
mean

varians = 2*v
varians

## Soal 5
### A. Fungsi Probabilitas dari Distribusi Exponensial
lambda = 3

set.seed(1)
rnorm(1)

p <- rexp(1,lambda)
p

### B. Histogramdari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
lambda = 3

set.seed(1)
hist(rexp(10,lambda), 
     main = "Histogram 10 Random")
hist(rexp(100,lambda), 
     main = "Histogram 100 Random")
hist(rexp(1000,lambda), 
     main = "Histogram 1000 Random")
hist(rexp(10000,lambda), 
     main = "Histogram 10000 Random")

### C. Mencari nilai rataan dan varians dari distribusi Exponensial dengan n = 100 dan λ = 3
lambda = 3
n = 100
set.seed(1)

rataan = mean(rexp(n,lambda))
rataan

varians = (sd(rexp(n,lambda)))^2
varians

## Soal 6
### A. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitungZ-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()). 
n = 100
mean = 50
sd = 8

set.seed(1)
zscore = rnorm(n, mean, sd)
disnorm
summary(zscore)

x1 = runif(1, min(zscore), mean)
x2 = runif(1, mean, max(zscore))
p1 = pnorm(x1, mean, sd)
p2 = pnorm(x2, mean, sd)
x1
x2
p1
p2
plot(zscore)

### B. Generate Histogramdari DistribusiNormal dengan breaks 50 dan format penamaan sesuai soal
breaks = 50

hist(zscore, breaks,
     main = "5025201109_Mohammad Firman Fardiansyah_Probstat_D_DNhistogram",
     col = "green"
)

### C. NilaiVarian (σ²) dari hasil generate randomnilaiDistribusiNormal
varians = (sd(zscore))^2
varians
