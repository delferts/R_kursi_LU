# Statistiskie raditaji

niedr<-read.table(file="../Dati/niedres2.txt",header=TRUE,sep="\t",dec=".")

str(niedr)

mean(niedr$garums)
sd(niedr$garums)
var(niedr$garums)
median(niedr$garums)

round(mean(niedr$garums),1)

x <- c(1:20,NA)
mean(x)
mean(x,na.rm=TRUE)

min(niedr$garums)
max(niedr$garums)
range(niedr$garums)

quantile(niedr$garums)
quantile(niedr$garums,probs=c(0.025,0.975))

summary(niedr$garums)

summary(niedr)

#Paraugkopu salidzinasana
niedr2<-read.table(file="../Dati/lapas.txt", header=TRUE,sep="\t",dec=".")

str(niedr2)

var.test(niedr2$garums~niedr2$paraug)

t.test(niedr2$garums~niedr2$paraug,var.equal=TRUE)

rokas <- read.table(file="../Dati/rokas.txt",header=TRUE,sep="\t",dec=".")
str(rokas)

t.test(rokas$laba,rokas$kreisa,paired=TRUE)

t.test(niedr2$platums,mu=3.0)

wilcox.test(niedr2$garums~niedr2$paraug)

wilcox.test(rokas$laba,rokas$kreisa,paired=TRUE)

zirni <- c(315, 108, 101, 32)
teor.zirni <- c(9, 3, 3, 1)/16 
chisq.test(x = zirni, p = teor.zirni)

koki<-matrix(c(12,34,56,23,8,27,33,47,14,11),ncol=2)
rownames(koki) <- c("Priede","Egle","Bērzs","Ozols","Kļava")
colnames(koki) <- c("Paraug A","Paraug B")
koki

chisq.test(koki)

#Korelacijas analize
smiltaji <- read.table(file="../Dati/smiltaji.txt",header=TRUE,sep="\t",dec=".")
str(smiltaji)

pairs(smiltaji)

cor(smiltaji[,1:3])

if (!require("ltm") )  install.packages("ltm")
library(ltm)
rcor.test(smiltaji[,1:3])

cor.test(smiltaji$pH,smiltaji$sunas)

cor.test(smiltaji$sugas,smiltaji$smilts,method="spearman")

cor.test(smiltaji$sugas,smiltaji$smilts,method="kendall")

#Regresijas analize
bietes <- read.table(file = "../Dati/bietes.txt", header = TRUE)
str(bietes)
summary(bietes)

modelis <- lm(svars ~ udens, data = bietes)
summary(modelis)


par(mfrow = c(2, 2))
plot(modelis)

koef <- coefficients(modelis)
koef
udens2 <- 301
raza2 <- koef[1] + koef[2] * udens2
raza2

jaunidati <- data.frame(udens = 301)
predict(modelis, jaunidati, interval = "confidence")

dati <- read.table(file = "../Dati/renda.txt", header = TRUE)
str(dati)
summary(dati)

modelis <- lm(hron ~ dec + jan + feb + mar, data = dati)
summary(modelis)

modelis1 <- lm(hron ~ jan + feb + mar, data = dati)
summary(modelis1)

modelis2 <- lm(hron ~ feb + mar, data = dati)
summary(modelis2)
anova(modelis,modelis2)

par(mfrow = c(2, 2))
plot(modelis2)

#Dispersijas analize

miezi <- read.table(file = "../Dati/miezi.txt", header = TRUE,sep="\t",dec=".")
str(miezi)
head(miezi)
summary(miezi)

boxplot(miezi$raza~miezi$skirne)

is.factor(miezi$skirne)
miezi$skirne<-as.factor(miezi$skirne)
is.factor(miezi$skirne)

if (!require("car") )  install.packages("car")
library(car)
leveneTest(y = miezi$raza, group = miezi$skirne)

anov.miezi <- aov(raza~skirne,data=miezi)
summary(anov.miezi)

TukeyHSD(anov.miezi)

if (!require("gplots") )  install.packages("gplots")
library(gplots)
plotmeans(miezi$raza ~ miezi$skirne,
 connect=FALSE,xlab = "Kviešu šķirne",
 ylab = "Raža",
 main = "Vidējās vērtības ar 95% ticamības intervālu")

soja <- read.table(file="../Dati/soja.txt",header=TRUE)
str(soja)
head(soja)

names(soja)
is.factor(soja$gaisma)
is.factor(soja$stress)
-
library(car)
leveneTest(y=soja$lapas,group=soja$gaisma:soja$stress)

modelis <- aov(lapas~gaisma*stress,data=soja)
summary(modelis)

TukeyHSD(modelis,"gaisma")