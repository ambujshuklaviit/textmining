getwd()
install.packages("tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

getwd()

f1<-setwd("C:\Users\Shree\Documents\input")
#f1<-setwd("C\Users\Shree\Downloads")
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
f1<-setwd("C:/Users/Shree/Documents/input")
abc<-VCorpus(DirSource(f1))
getwd()
f1<-setwd("C:/Users/Shree/Documents/input")
dir(f1)
f1<-setwd("C:/Users/Shree/Documents/input")
dir(f1)
abc<-VCorpus(DirSource(f1))
abc<-tm_map(abc,removeNumbers)
abc<-tm_map(abc,removePunctuation)
abc<-tm_map(abc,tolower)
abc<-tm_map(abc,removeWords,stopwords("english"))
abc<-tm_map(abc,removeWords,c("text","data"))
abc<-tm_map(abc,stripWhitespace)
abc<-tm_map(abc,PlainTextDocument)
dtm<-DocumentTermMatrix(abc)
#dtm<-TermDocumentMatrix(abc)
tdm<-TermDocumentMatrix(abc)
#dtm<-DocumentTermMatrix(abc)
freq <- colSums(as.matrix(dtm))
View(dtm)
View(tdm)
View(dtm)
View(tdm)
freq <- colSums(as.matrix(dtm))
View(freq)
freq <- rowSums(as.matrix(tdm))
View(freq)
m<-as.matrix(dtm)
View(m)
write.csv(m,"output.csv")
qq=read.csv("output.csv")
View(qq)
ord <- order(freq)
freq[head(ord)]
freq[tail(ord)]
library(wordcloud)
colora=c("red","green","blue","yellow")
wordcloud(names(freq),freq,max.words=100,color=colora)
dataa=subset(dtm,freq>6)
wf=data.frame(word=names(freq),freq=freq)
dataa=subset(wf,freq>6)
View(dataa)
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
f1<-setwd("C:/Users/Shree/Documents/input")
dir(f1)
abc<-VCorpus(DirSource(f1))
f1<-setwd("C:/Users/Shree/Documents/input")
getwd()
dir(f1)
abc<-VCorpus(DirSource(f1))
abc<-tm_map(abc,removeNumbers)
abc<-tm_map(abc,removePunctuation)
abc<-tm_map(abc,tolower)
abc<-tm_map(abc,removeWords,stopwords("english"))
abc<-tm_map(abc,removeWords,c("text","data"))
abc<-tm_map(abc,stripWhitespace)
abc<-tm_map(abc,PlainTextDocument)
dtm<-DocumentTermMatrix(abc)
#dtm<-TermDocumentMatrix(abc)
tdm<-TermDocumentMatrix(abc)
#dtm<-DocumentTermMatrix(abc)
freq <- colSums(as.matrix(dtm))
View(dtm)
View(tdm)
View(dtm)
View(tdm)
freq <- colSums(as.matrix(dtm))
View(freq)
freq <- rowSums(as.matrix(tdm))
View(freq)
m<-as.matrix(dtm)
View(m)
write.csv(m,"output.csv")
qq=read.csv("output.csv")
View(qq)
ord <- order(freq)
freq[head(ord)]
freq[tail(ord)]
library(wordcloud)
colora=c("red","green","blue","yellow")
wordcloud(names(freq),freq,max.words=100,color=colora)
dataa=subset(dtm,freq>6)
wf=data.frame(word=names(freq),freq=freq)
dataa=subset(wf,freq>6)
View(dataa)
dataa=subset(dtm,freq>3)
wf=data.frame(word=names(freq),freq=freq)
dataa=subset(wf,freq>3)
View(dataa)
colora=c("red","green","blue","yellow")
wordcloud(names(freq),freq,max.words=100,color=colora)
dataa=subset(dtm,freq>3)
wf=data.frame(word=names(freq),freq=freq)
