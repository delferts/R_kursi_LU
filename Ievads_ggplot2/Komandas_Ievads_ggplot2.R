# ggplot2
# Paketes
if (!require("ggplot2") )  install.packages("ggplot2")
library(ggplot2)

if (!require("grid") )  install.packages("grid")
library(grid)

if (!require("scales") )  install.packages("scales")
library(scales)


dati <- read.csv(file="../Dati/augi.csv",header=TRUE,sep=",",dec=".")
head(dati)


ggplot(dati, aes(garums, lapas)) + geom_point()

ggplot(dati, aes(garums, lapas,color=lapas)) + geom_point()

ggplot(dati, aes(garums, lapas,color=gaisma)) + geom_point()

ggplot(dati, aes(garums, lapas,shape=gaisma)) + geom_point()

ggplot(dati, aes(garums, lapas,color=gaisma,shape=stress)) + geom_point()

ggplot(dati,aes(garums, lapas)) + geom_point(colour = "red", size = 3)

ggplot(dati, aes(stress))+geom_bar()

ggplot(dati, aes(stress)) + geom_bar(fill="white", colour="darkgreen")

ggplot(dati, aes(stress,fill=gaisma)) + geom_bar()

ggplot(dati, aes(stress,fill=gaisma)) + geom_bar(position="dodge")

df<-data.frame(Dzimums=c("F","M"),Skaits=c(23,19))
ggplot(df,aes(Dzimums,Skaits))+geom_bar(stat="identity")

ggplot(dati, aes(gaisma, lapas)) + geom_boxplot()

ggplot(dati, aes(gaisma, lapas)) + geom_boxplot() + geom_jitter()

ggplot(dati, aes(gaisma, lapas,fill=stress)) + geom_boxplot()

ggplot(dati, aes(garums,lapas)) + geom_point()+geom_hline(yintercept=200,color="green")

ggplot(dati, aes(garums,lapas)) + geom_point()+geom_vline(xintercept=100,color="green")

ggplot(dati, aes(garums,lapas)) + geom_line()

ggplot(dati, aes(garums,lapas,color=stress)) + geom_line()

ggplot(dati, aes(garums,lapas)) +  geom_line(colour = "red", size = 1)

ggplot(dati,aes(garums,lapas)) + geom_smooth()

ggplot(dati,aes(garums,lapas)) + geom_smooth() + geom_point()

ggplot(dati,aes(garums,lapas)) + geom_smooth(se = FALSE) + geom_point()

ggplot(dati,aes(garums,lapas))+ geom_smooth(method = "lm") + geom_point()

ggplot(dati,aes(garums,lapas,color=stress))+ geom_smooth(method = "lm") + geom_point()

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point()

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point() + 
      scale_colour_discrete("Leģendas nosaukums")

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point() + 
      scale_colour_grey()

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point()  + 
      scale_colour_manual("Leģendas nosaukus",values = c("yellow","brown"))

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point()  + 
      scale_colour_manual("Leģendas nosaukus",values = c("yellow","brown"),
                          labels=c("Stress bija","Stress nebija"))

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point()

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point() + 
      scale_x_continuous("Auga garums (cm)")

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point() + 
      scale_x_continuous("Auga garums (cm)",breaks=c(75,100,125))

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point()  + 
      scale_x_log10(limits=c(1,1000),breaks=c(1,10,100,1000))

ggplot(dati,aes(garums, lapas, color=stress)) + geom_point()  + 
      labs(x = "X ass",y="Y ass",title="Galvenais",color="Krasas")

ggplot(dati,aes(garums, lapas)) + geom_point() 

ggplot(dati,aes(garums, lapas)) + geom_point()  + facet_grid(. ~ stress)

ggplot(dati,aes(garums, lapas)) + geom_point() + facet_grid(gaisma ~ .)

ggplot(dati,aes(garums, lapas)) + geom_point() + facet_grid(gaisma ~ stress)

ggplot(dati,aes(garums, lapas)) + geom_point() + facet_grid(gaisma ~ stress,margins = TRUE)

ggplot(dati,aes(garums, lapas)) + geom_point()

ggplot(dati,aes(garums, lapas)) + geom_point() + facet_wrap(~ stress)

ggplot(dati,aes(garums, lapas)) + geom_point() + facet_wrap(~ stress,ncol=1)

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() 

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+ theme_bw()

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme_minimal()

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+ 
      theme_classic()

if (!require("ggthemes") )  install.packages("ggthemes")
library(ggthemes)
ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme_excel()

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme_wsj()

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme_gdocs()

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme_tufte()

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+
      labs(title="Virsraksts")

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+
      labs(title="Virsraksts") + 
      theme(plot.title = element_text(size = rel(2),colour="blue"))

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(axis.line.x = element_line(size = 3, colour = "red", linetype = "dotted"))

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(axis.text = element_text(colour = "blue"))

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(axis.text.y = element_blank())

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(axis.title.x = element_blank())

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+ 
      theme(legend.position = "none")

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+ 
      theme(legend.position = "bottom")

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(panel.grid.major = element_line(colour = "blue"))

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(panel.grid.minor = element_line(colour = "red", linetype = "dotted"))

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(panel.grid.major.y = element_blank(), 
            panel.grid.minor.y = element_blank())

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+ 
      theme(plot.background = element_rect(fill = "green"))

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point() + 
      theme(panel.background = element_rect(colour = "pink",size=3))

ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()+
  theme(axis.text.y=element_text(size=rel(1.2),face="bold"),
        axis.text.x=element_text(size=rel(1.2),face="bold",angle=90,vjust=0.5),
        axis.title=element_text(size=rel(1.5),face="bold"),
        axis.line.x=element_line(color="black"),
        panel.background=element_blank(),
        panel.grid.minor=element_blank(),
        panel.grid.major=element_line(color="grey90"),
        legend.position="top",
        legend.key=element_rect(fill="white"),
        legend.title=element_text(size=rel(1.5)),
        legend.text=element_text(size=rel(1.5)))

p<-ggplot(dati,aes(garums, lapas,color=stress)) + geom_point()

noformejums<-  theme(axis.text.y=element_text(size=rel(1.2),face="bold"),
        axis.text.x=element_text(size=rel(1.2),face="bold",angle=90,vjust=0.5),
        axis.title=element_text(size=rel(1.5),face="bold"),
        axis.line.x=element_line(color="black"),
        panel.background=element_blank(),
        panel.grid.minor=element_blank(),
        panel.grid.major=element_line(color="grey90"),
        legend.position="top",
        legend.key=element_rect(fill="white"),
        legend.title=element_text(size=rel(1.5)),
        legend.text=element_text(size=rel(1.5)))

p+noformejums

ggplot(dati,aes(garums))+geom_histogram()+noformejums