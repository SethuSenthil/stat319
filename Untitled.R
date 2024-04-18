drugs = read.csv("Dosage.csv", header = TRUE)
model = aov(drug ~ BPchange, data = drugs) # response ~ factor
anova(model)
TukeyHSD(model, conf.level = 0.95) # 0.95 is default. Edit if alpha not 0.05

