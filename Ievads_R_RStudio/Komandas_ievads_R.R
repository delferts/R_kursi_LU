# Ievads darba ar R un RStudio

# Piemers
if (!require("readxl") )  install.packages("readxl")
library(readxl)
dati <- read_excel("../Dati/Cilveki.xlsx")
dati

cor.test(dati$Garums,dati$Svars)

summary(lm(Svars~Garums,data=dati))

plot(dati$Svars~dati$Garums)
abline(lm(Svars~Garums,data=dati))

## Palidzibas iegusana

help.start()

help(plot)

args(cor)

example(plot)

# Pakesu instalacijas un pievienosana

install.packages("ggplot2")
library(ggplot2)


# Kalkulators

4+7
log(8,2)
exp(2)

# Citesana

citation()
citation("readxl")

# Interaktiva R macisanas

library(swirl)

# Darba direktorija

getwd()
setwd("/Users/didzis/Documents")
```

# Datu importesana

dati <- read.table(file="niedres.txt",header=T,  sep="\t", dec=".")
dati2 <- read.csv2(file="niedres.txt",header=T,   sep="\t", dec=".")
dati
```

# Datu importesana - iebuvetie dati

data()
data(cars)
head(cars)

# Datu eksportesana

write.table(x=dati, file="eksports.txt",sep="\t",dec=".")


## Datu atlasisana – datu tabula

dati$garums
dati["garums"]

dati[,1]
dati[,1,drop=FALSE]

dati[1,]
dati[c(2,5),]
dati[1:3,]

## Darbs ar datiem

garums


## Darba vides sakartosana

ls()

rm(dati)

