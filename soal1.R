#soal no 1

# a. Peluang penyurvei bertemu orang yang tidak menghadiri acara vaksinasi
# ketika diketikahui x=3 dan p=0.2
p = 0.2
x = 3

Peluang <- dgeom(x, p)
Peluang

# b. Mencari mean dari 10000 data random, prob = 0.20, dan X=3
n = 10000
p = 0.20
m <- mean(rgeom(n, p) == 3)
m

# c. Perbandingan a dan b
# Poin a akan menghasilkan nilai peluang yang tetap karena distribusi geometriknya sama
# Poin b menghasilkan nilai yang berbeda karena distribusi geometik bernilai acak

# d. Membuat histogram distribusi geometrik dengan X=3 gagal sebelum sukses pertama
set.seed(0)
hist(rgeom(n, prob = p),
     main="Histogram Geometrik",
     xlim = c(0,25),
     xlab="X",
     col="green",
)

# e. Mencari nilai rataan dan varians dari distribusi geometric
p = 0.2
n = 3

rataan = n/p
rataan

varians = (n-p)/(p^2)
varians
