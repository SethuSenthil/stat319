# Need to use DescTools package for sign test
flares <- read.csv("Flares.csv", header = T)
wilcox.test(time ~ brand, data = flares, conf.int = T, 
            conf.level = 0.90) # uses 'm' as first group
