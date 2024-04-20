# Need to use DescTools package for sign test
wil <- read.csv("Wilcoxon_eg.csv", header = T)
SignTest(wil$data, mu = 21, alternative = "greater", conf.level = 0.95)
wilcox.test(made ~ team, data = wil, conf.int = T, 
            conf.level = 0.95) # uses 'm' as first group
wilcox.test(made ~ id, data = wil, conf.int = T, 
            conf.level = 0.95) # uses '1' as first group
# If you want to suppress warning add exact = F
