#soal no 3

# a. Diketahui rata" 4.5, x = 6 bayi akan lahir
x = 6
lambda = 4.5
dpois(x,lambda)

# b. Histogram 6 bayi selama setahun n = 365
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

#c
babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#dapat dilihat bahwa hasil simulasi nya sekitar 11.5% (berdasarkan perhitungan diatas)
#sedangkan nilai exact nya yaitu 12,8%
#yang artinya sesuai karena nilai simulasi mendekati nilai exact

#d
#mean
lambda

#variance
lambda

