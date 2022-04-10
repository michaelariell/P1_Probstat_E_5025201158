#soal no 1

# a. Peluang penyurvei bertemu orang yang tidak menghadiri acara vaksinasi
# ketika diketikahui x=3 dan p=0.20
p = 0.20
n = 3
dgeom(x = n, prob = p)

# b. Mencari mean dari 10000 data random, prob = 0.20, dan X=3
mean(rgeom(n = 10000, prob = p) == 3)

# c. Perbandingan a dan b
# pada soal 1.a itu merupakan nilai exact nya, yaitu 0.1024
# sedangkan 1.b merupakan nilai dari simulasi ketika diambil dengan 10000 data random pada kasus yang serupa
# dan ternyata hasil nya mendekati nilai exact nya

# d. Membuat histogram distribusi geometrik dengan X=3 gagal sebelum sukses pertama
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")


# e. Mencari nilai rataan dan varians dari distribusi geometric
p=0.2

#mean
mean1 = 1 / p
mean1

#variance
var1 = (1 - p) / p^2
var1


