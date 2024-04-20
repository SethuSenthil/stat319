wil <- read.csv("SulfurOxide.csv", header = T)
SignTest(wil$sulfur, mu = 22.5, alternative = "less", conf.level = 0.95)
