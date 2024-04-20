ex <- read.csv("NonParm_example.csv", header = T)
RunsTest(ex$sex)
RunsTest(ex$age, na.rm = T) # na.rm to ignore missing NA values