df.train <- read.csv('titanic_train.csv')
library(Amelia)
library(ggplot2)

missmap(df.train, main='Missing Map', col = c('yellow', 'black'), legend = FALSE)
ggplot(df.train, aes(Survived)) + geom_bar()
ggplot(df.train, aes(Pclass)) + geom_bar(aes(fill=factor(Pclass)))
ggplot(df.train, aes(Age)) + geom_histogram(bin=20, alpha = 0.5, fill = 'blue')
ggplot(df.train, aes(SibSp)) + geom_histogram(bin=20, alpha = 0.5, fill = 'blue')
ggplot(df.train, aes(Fare)) + geom_histogram( alpha = 0.5, fill = 'green', color='black')


