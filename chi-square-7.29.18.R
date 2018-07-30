cbclgirls <- read.csv(file.choose(), header=T)
#lets you choose a file from the computer - like a browser
cblcgirls 
cbclgirls1 = split.data.frame(cbclgirls,cbclgirls$gender)
library(plyr)
y <- count(cbclgirls$gender)
y
#shows basic frequencies
#[didn't work] cblc18 <-table(cbclgirls$gender,cbclgirls$cbcl18)
table(cbclgirls$gender,cbclgirls$cbcl18)
#row is gender, column is cbcl18
chisq.test(table(cbclgirls$gender,cbclgirls$cbcl18))
#actual chi square for number 18
#X-squared = 18.1927, df = 2, p-value = 0.0001121 [!!!]
chisq.test(table(cbclgirls$gender,cbclgirls$cbcl18))$expected
# expected values if null hypothesis is true
table(cbclgirls$gender,cbclgirls$cbcl91)
chisq.test(table(cbclgirls$gender,cbclgirls$cbcl91))
