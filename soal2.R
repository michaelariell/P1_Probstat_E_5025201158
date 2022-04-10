#soal no 2
#jumlah pasien = n = 20
#peluang sembuh = p = 0.2

# a. peluang sembuh 4 pasien
a <- dbinom(x=4,20,0.2)
a
#output = 0.2181994

# b. Grafik histogram
data <- rbinom(20,20,0.2)
hist(data,
     xlim = c(0,8))

# c. Nilai rataan dan varians
n=20 #jumlah pasien
p=0.2 #peluang
q=1-p #peluang failure nya

#mean theorytical
me=n*p
me

#mean sample
mean(data)

#variance theorytical
va=n*p*q
va

#variance sample
var(data)