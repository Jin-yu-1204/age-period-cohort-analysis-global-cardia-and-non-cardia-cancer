
##packages needed---------------------------------------------------------------------------
library(readxl)
library(Epi)
library(tidyverse)
library(grid)
#install.packages("gridtext")
library(gridtext)
library(ggtext)
library(patchwork)
#######GC----------------------------------------------------------------------------

#c1-1-Argentina 放弃----------------



#c3-6-United States of America------
m_9 <- read_excel("D:/apc/m6_9.xls")
f_9 <- read_excel("D:/apc/f6_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m6_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f6_9.csv")


jpeg(file="D:/APC/SC/6-USA.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("USA", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  
#c2-5-Canada

#c4-7-China------
m_9 <- read_excel("D:/apc/m7_9.xls")
f_9 <- read_excel("D:/apc/f7_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m7_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f7_9.csv")


jpeg(file="D:/APC/SC/7-China.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("China", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#c5-9-Israel----
m_9 <- read_excel("D:/apc/m9_9.xls")
f_9 <- read_excel("D:/apc/f9_9.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m9_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f9_9.csv")


jpeg(file="D:/APC/SC/9-Israel.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Israel", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#c6-10-Japan------
m_9 <- read_excel("D:/apc/m10_9.xls")
f_9 <- read_excel("D:/apc/f10_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m10_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f10_9.csv")


jpeg(file="D:/APC/SC/10-Japan.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Japan", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#7-11-Korea------
m_9 <- read_excel("D:/apc/m11_9.xls")
f_9 <- read_excel("D:/apc/f11_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m11_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f11_9.csv")

jpeg(file="D:/APC/SC/11-Korea.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("South Korea", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#8-13-Thailand----
m_9 <- read_excel("D:/apc/m13_9.xls")
f_9 <- read_excel("D:/apc/f13_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m13_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f13_9.csv")


jpeg(file="D:/APC/SC/13-Thailand.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Thailand", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#9-15-Belarus------
m_9 <- read_excel("D:/apc/m15_9.xls")
f_9 <- read_excel("D:/apc/f15_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m15_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f15_9.csv")


jpeg(file="D:/APC/SC/15-Belarus.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Belarus", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#10-16-Czechia------
m_9 <- read_excel("D:/apc/m16_9.xls")
f_9 <- read_excel("D:/apc/f16_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m16_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f16_9.csv")


jpeg(file="D:/APC/SC/16-Czechia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Czechia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#11-17-Denmark------
m_9 <- read_excel("D:/apc/m17_9.xls")
f_9 <- read_excel("D:/apc/f17_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m17_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f17_9.csv")


jpeg(file="D:/APC/SC/17-Denmark.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Denmark", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#12-18-Estonia------
m_9 <- read_excel("D:/apc/m18_9.xls")
f_9 <- read_excel("D:/apc/f18_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m18_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f18_9.csv")


jpeg(file="D:/APC/SC/18-Estonia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Estonia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#13-19-France------
m_9 <- read_excel("D:/apc/m19_9.xls")
f_9 <- read_excel("D:/apc/f19_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m19_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f19_9.csv")


jpeg(file="D:/APC/SC/19-France.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("France", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#14-20-Germany------
m_9 <- read_excel("D:/apc/m20_9.xls")
f_9 <- read_excel("D:/apc/f20_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m20_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f20_9.csv")


jpeg(file="D:/APC/SC/20-Germany.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Germany", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#15-23-Italy------
m_9 <- read_excel("D:/apc/m23_9.xls")
f_9 <- read_excel("D:/apc/f23_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m23_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f23_9.csv")


jpeg(file="D:/APC/SC/23-Italy.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Italy", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#16-25-The Netherlands------
m_9 <- read_excel("D:/apc/m25_9.xls")
f_9 <- read_excel("D:/apc/f25_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m25_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f25_9.csv")


jpeg(file="D:/APC/SC/25-The Netherlands.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("The Netherlands", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#18-30-Spain------
m_9 <- read_excel("D:/apc/m30_9.xls")
f_9 <- read_excel("D:/apc/f30_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m30_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f30_9.csv")


jpeg(file="D:/APC/SC/30-Spain.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Spain", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#19-33-United Kingdom------
m_9 <- read_excel("D:/apc/m33_9.xls")
f_9 <- read_excel("D:/apc/f33_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m33_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f33_9.csv")


jpeg(file="D:/APC/SC/33-United Kingdom.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("United Kingdom", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#20-35-Australia------
m_9 <- read_excel("D:/apc/m35_9.xls")
f_9 <- read_excel("D:/apc/f35_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m35_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f35_9.csv")


jpeg(file="D:/APC/SC/35-Australia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Australia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#21-36-New Zealand------
m_9 <- read_excel("D:/apc/m36_9.xls")
f_9 <- read_excel("D:/apc/f36_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m36_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f36_9.csv")


jpeg(file="D:/APC/SC/36-New Zealand.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("New Zealand", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#22-39-Austria------
m_9 <- read_excel("D:/apc/m39_9.xls")
f_9 <- read_excel("D:/apc/f39_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m39_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f39_9.csv")


jpeg(file="D:/APC/SC/39-Austria.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Austria", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#23-40-Iceland 不要了 ------
m_9 <- read_excel("D:/apc/m40_9.xls")
f_9 <- read_excel("D:/apc/f40_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m40_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f40_9.csv")


jpeg(file="D:/APC/SC/40-Iceland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Canada", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#24-42-Malta不要了------------------------ 
m_9 <- read_excel("D:/apc/m42_9.xls")
f_9 <- read_excel("D:/apc/f42_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m42_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f42_9.csv")


jpeg(file="D:/APC/SC/42-Malta.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Canada", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#25-43-Slovenia------
m_9 <- read_excel("D:/apc/m43_9.xls")
f_9 <- read_excel("D:/apc/f43_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m43_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f43_9.csv")


jpeg(file="D:/APC/SC/43-Slovenia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Slovenia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#26-24-Latvia------
m_9 <- read_excel("D:/apc/m24_9.xls")
f_9 <- read_excel("D:/apc/f24_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m24_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f24_9.csv")


jpeg(file="D:/APC/SC/24-Latvia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Latvia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#27-32-Switzerland------
m_9 <- read_excel("D:/apc/m32_9.xls")
f_9 <- read_excel("D:/apc/f32_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m32_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f32_9.csv")


jpeg(file="D:/APC/SC/32-Switzerland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Switzerland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#28-41-Ireland------
m_9 <- read_excel("D:/apc/m41_9.xls")
f_9 <- read_excel("D:/apc/f41_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/SC/m41_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/SC/f41_9.csv")


jpeg(file="D:/APC/SC/41-Ireland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Ireland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  



#######非贲门癌---------------
#1-Argentina---不要了----------
m_9 <- read_excel("D:/apc/m1_0.xls")
f_9 <- read_excel("D:/apc/f1_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m1_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f1_0.csv")


jpeg(file="D:/APC/NCGC/1-Argentina（2）.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Argentina", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#c2-5-Canada------
m_9 <- read_excel("D:/apc/m5_0.xls")
f_9 <- read_excel("D:/apc/f5_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m5_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f5_0.csv")


jpeg(file="D:/APC/NCGC/5-Canada2.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Canada", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#c3-6-United States of America------
m_9 <- read_excel("D:/apc/m6_0.xls")
f_9 <- read_excel("D:/apc/f6_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m6_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f6_0.csv")


jpeg(file="D:/APC/NCGC/United States.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("United States", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  #c2-5-Canada

#c4-7-China------
m_9 <- read_excel("D:/apc/m7_0.xls")
f_9 <- read_excel("D:/apc/f7_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m7_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f7_0.csv")


jpeg(file="D:/APC/NCGC/7-China.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("China", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#c5-9-Israel----
m_9 <- read_excel("D:/apc/m9_0.xls")
f_9 <- read_excel("D:/apc/f9_0.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m9_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f9_0.csv")


jpeg(file="D:/APC/NCGC/9-Israel.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Israel", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#c6-10-Japan------
m_9 <- read_excel("D:/apc/m10_0.xls")
f_9 <- read_excel("D:/apc/f10_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m10_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f10_0.csv")


jpeg(file="D:/APC/NCGC/10-Japan.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Japan", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#7-11-Korea------
m_9 <- read_excel("D:/apc/m11_0.xls")
f_9 <- read_excel("D:/apc/f11_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m11_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f11_0.csv")


jpeg(file="D:/APC/NCGC/11-South Korea.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("South Korea", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#8-13-Thailand---------
m_9 <- read_excel("D:/apc/m13_0.xls")
f_9 <- read_excel("D:/apc/f13_0.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m13_0——删除A82.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f13_0——删除A82.csv")


jpeg(file="D:/APC/NCGC/13-Thailand——删除A82.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Thailand", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#9-15-Belarus------
m_9 <- read_excel("D:/apc/m15_0.xls")
f_9 <- read_excel("D:/apc/f15_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m15_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f15_0.csv")


jpeg(file="D:/APC/NCGC/15-Belarus.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Belarus", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#10-16-Czechia------
m_9 <- read_excel("D:/apc/m16_0.xls")
f_9 <- read_excel("D:/apc/f16_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m16_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f16_0.csv")


jpeg(file="D:/APC/NCGC/16-Czechia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Czechia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#11-17-Denmark------
m_9 <- read_excel("D:/apc/m17_0.xls")
f_9 <- read_excel("D:/apc/f17_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m17_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f17_0.csv")


jpeg(file="D:/APC/NCGC/17-Denmark.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Denmark", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#12-18-Estonia------
m_9 <- read_excel("D:/apc/m18_0.xls")
f_9 <- read_excel("D:/apc/f18_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m18_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f18_0.csv")


jpeg(file="D:/APC/NCGC/18-Estonia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Estonia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#13-19-France------
m_9 <- read_excel("D:/apc/m19_0.xls")
f_9 <- read_excel("D:/apc/f19_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m19_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f19_0.csv")


jpeg(file="D:/APC/NCGC/19-France.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("France", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#14-20-Germany------
m_9 <- read_excel("D:/apc/m20_0.xls")
f_9 <- read_excel("D:/apc/f20_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m20_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f20_0.csv")


jpeg(file="D:/APC/NCGC/20-Germany.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Germany", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#15-23-Italy------
m_9 <- read_excel("D:/apc/m23_0.xls")
f_9 <- read_excel("D:/apc/f23_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m23_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f23_0.csv")


jpeg(file="D:/APC/NCGC/23-Italy.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Italy", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#16-25-The Netherlands------
m_9 <- read_excel("D:/apc/m25_0.xls")
f_9 <- read_excel("D:/apc/f25_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m25_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f25_0.csv")


jpeg(file="D:/APC/NCGC/25-The Netherlands.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("The Netherlands", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#18-30-Spain------
m_9 <- read_excel("D:/apc/m30_0.xls")
f_9 <- read_excel("D:/apc/f30_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m30_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f30_0.csv")


jpeg(file="D:/APC/NCGC/30-Spain.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Spain", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#19-33-United Kingdom------
m_9 <- read_excel("D:/apc/m33_0.xls")
f_9 <- read_excel("D:/apc/f33_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m33_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f33_0.csv")


jpeg(file="D:/APC/NCGC/33-United Kingdom.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("United Kingdom", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#20-35-Australia------
m_9 <- read_excel("D:/apc/m35_0.xls")
f_9 <- read_excel("D:/apc/f35_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m35_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f35_0.csv")


jpeg(file="D:/APC/NCGC/35-Australia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Australia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#21-36-New Zealand------
m_9 <- read_excel("D:/apc/m36_0.xls")
f_9 <- read_excel("D:/apc/f36_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m36_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f36_0.csv")


jpeg(file="D:/APC/NCGC/36-New Zealand.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("New Zealand", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#22-39-Austria------
m_9 <- read_excel("D:/apc/m39_0.xls")
f_9 <- read_excel("D:/apc/f39_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m39_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f39_0.csv")


jpeg(file="D:/APC/NCGC/39-Austria.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Austria", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#23-40-Iceland--不要了----
m_9 <- read_excel("D:/apc/m40_0.xls")
f_9 <- read_excel("D:/apc/f40_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m40_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f40_0.csv")


jpeg(file="D:/APC/NCGC/40-Iceland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Iceland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#24-42-Malta 不要了-----

m_9 <- read_excel("D:/apc/m42_0.xls")
f_9 <- read_excel("D:/apc/f42_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m42_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f42_0.csv")


jpeg(file="D:/APC/NCGC/42-Malta.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Malta", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#25-43-Slovenia------
m_9 <- read_excel("D:/apc/m43_0.xls")
f_9 <- read_excel("D:/apc/f43_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m43_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f43_0.csv")


jpeg(file="D:/APC/NCGC/43-Slovenia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Slovenia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#26-24-Latvia------
m_9 <- read_excel("D:/apc/m24_0.xls")
f_9 <- read_excel("D:/apc/f24_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m24_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f24_0.csv")


jpeg(file="D:/APC/NCGC/24-Latvia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Latvia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#27-32-Switzerland------
m_9 <- read_excel("D:/apc/m32_0.xls")
f_9 <- read_excel("D:/apc/f32_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m32_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f32_0.csv")


jpeg(file="D:/APC/NCGC/32-Switzerland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Switzerland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#28-41-Ireland------
m_9 <- read_excel("D:/apc/m41_0.xls")
f_9 <- read_excel("D:/apc/f41_0.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/NCGC/m41_0.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/NCGC/f41_0.csv")


jpeg(file="D:/APC/NCGC/41-Ireland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Ireland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  




#######贲门癌----------------------------------------------------------------------------
#c1-1-Argentina放弃----
m_9 <- read_excel("D:/apc/m1_1.xls")
f_9 <- read_excel("D:/apc/f1_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/apcr_title/25-84/CGC/m1_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/apcr_title/25-84/CGC/f1_1.csv")


jpeg(file="D:/APC/CGC/1-Argentina.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0,0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Argentina", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#c2-5-Canada-------
m_9 <- read_excel("D:/apc/m5_1.xls")
f_9 <- read_excel("D:/apc/f5_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m5_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f5_1.csv")


jpeg(file="D:/APC/CGC/5-Canada.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Canada", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#c3-6-United States of America----
m_9 <- read_excel("D:/apc/m6_1.xls")
f_9 <- read_excel("D:/apc/f6_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m6_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f6_1.csv")


jpeg(file="D:/APC/CGC/United States.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("United States", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#c4-7-China----
m_9 <- read_excel("D:/apc/m7_1.xls")
f_9 <- read_excel("D:/apc/f7_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m7_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f7_1.csv")


jpeg(file="D:/APC/CGC/7-China.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("China", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  



#c5-9-Israel-----
m_9 <- read_excel("D:/apc/m9_1.xls")
f_9 <- read_excel("D:/apc/f9_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m9_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f9_1.csv")


jpeg(file="D:/APC/CGC/9-Israel.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Israel", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#c6-10-Japan----
m_9 <- read_excel("D:/apc/m10_1.xls")
f_9 <- read_excel("D:/apc/f10_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m10_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f10_1.csv")


jpeg(file="D:/APC/CGC/10-Japan.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Japan", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#7-11-Korea----
m_9 <- read_excel("D:/apc/m11_1.xls")
f_9 <- read_excel("D:/apc/f11_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m11_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f11_1.csv")


jpeg(file="D:/APC/CGC/11-Korea.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("South Korea", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#8-13-Thailand----
m_9 <- read_excel("D:/apc/m13_1.xls")
f_9 <- read_excel("D:/apc/f13_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m13_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f13_1.csv")


jpeg(file="D:/APC/CGC/13-Thailand.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Thailand", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#9-15-Belarus----
m_9 <- read_excel("D:/apc/m15_1.xls")
f_9 <- read_excel("D:/apc/f15_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m15_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f15_1.csv")


jpeg(file="D:/APC/CGC/15-Belarus.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Belarus", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#10-16-Czechia----
m_9 <- read_excel("D:/apc/m16_1.xls")
f_9 <- read_excel("D:/apc/f16_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m16_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f16_1.csv")


jpeg(file="D:/APC/CGC/16-Czechia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Czechia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#11-17-Denmark----
m_9 <- read_excel("D:/apc/m17_1.xls")
f_9 <- read_excel("D:/apc/f17_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m17_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f17_1.csv")


jpeg(file="D:/APC/CGC/17-Denmark.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Denmark", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#12-18-Estonia------
m_9 <- read_excel("D:/apc/m18_1.xls")
f_9 <- read_excel("D:/apc/f18_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m18_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f18_1.csv")


jpeg(file="D:/APC/CGC/18-Estonia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Estonia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#13-19-France----
m_9 <- read_excel("D:/apc/m19_1.xls")
f_9 <- read_excel("D:/apc/f19_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m19_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f19_1.csv")


jpeg(file="D:/APC/CGC/19-France.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("France", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#14-20-Germany----
m_9 <- read_excel("D:/apc/m20_1.xls")
f_9 <- read_excel("D:/apc/f20_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m20_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f20_1.csv")


jpeg(file="D:/APC/CGC/20-Germany.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Germany", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#15-23-Italy----
m_9 <- read_excel("D:/apc/m23_1.xls")
f_9 <- read_excel("D:/apc/f23_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m23_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f23_1.csv")


jpeg(file="D:/APC/CGC/23-Italy.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Italy", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#16-25-The Netherlands----
m_9 <- read_excel("D:/apc/m25_1.xls")
f_9 <- read_excel("D:/apc/f25_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m25_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f25_1.csv")


jpeg(file="D:/APC/CGC/25-The Netherlands.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("The Netherlands", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#18-30-Spain----
m_9 <- read_excel("D:/apc/m30_1.xls")
f_9 <- read_excel("D:/apc/f30_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m30_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f30_1.csv")


jpeg(file="D:/APC/CGC/30-Spain.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Spain", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#19-33-United Kingdom----
m_9 <- read_excel("D:/apc/m33_1.xls")
f_9 <- read_excel("D:/apc/f33_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m33_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f33_1.csv")


jpeg(file="D:/APC/CGC/33-United Kingdom.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("United Kingdom", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#20-35-Australia----
m_9 <- read_excel("D:/apc/m35_1.xls")
f_9 <- read_excel("D:/apc/f35_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m35_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f35_1.csv")


jpeg(file="D:/APC/CGC/35-Australia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Australia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#21-36-New Zealand----
m_9 <- read_excel("D:/apc/m36_1.xls")
f_9 <- read_excel("D:/apc/f36_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m36_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f36_1.csv")


jpeg(file="D:/APC/CGC/36-New Zealand.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("New Zealand", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#22-39-Austria----
m_9 <- read_excel("D:/apc/m39_1.xls")
f_9 <- read_excel("D:/apc/f39_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m39_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f39_1.csv")


jpeg(file="D:/APC/CGC/39-Austria.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Austria", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#23-40-Iceland #女性无法拟合----
m_9 <- read_excel("D:/apc/m40_1.xls")
f_9 <- read_excel("D:/apc/f40_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m40_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f40_1.csv")


jpeg(file="D:/APC/CGC/40-Iceland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Iceland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
#apc.lines(z.f,frame=fp,col="red",ci=T) #女性无法拟合
dev.off()  

#24-42-Malta-删了很多------

m_9 <- read_excel("D:/apc/m42_1.xls")
f_9 <- read_excel("D:/apc/f42_1.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m42_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f42_1.csv")


jpeg(file="D:/APC/CGC/42-Malta.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Malta", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  





#25-43-Slovenia----
m_9 <- read_excel("D:/apc/m43_1.xls")
f_9 <- read_excel("D:/apc/f43_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m43_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f43_1.csv")


jpeg(file="D:/APC/CGC/43-Slovenia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Slovenia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#26-24-Latvia----
m_9 <- read_excel("D:/apc/m24_1.xls")
f_9 <- read_excel("D:/apc/f24_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m24_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f24_1.csv")


jpeg(file="D:/APC/CGC/24-Latvia.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Latvia", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


#27-32-Switzerland----
m_9 <- read_excel("D:/apc/m32_1.xls")
f_9 <- read_excel("D:/apc/f32_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m32_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f32_1.csv")


jpeg(file="D:/APC/CGC/32-Switzerland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Switzerland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  

#28-41-Ireland----
m_9 <- read_excel("D:/apc/m41_1.xls")
f_9 <- read_excel("D:/apc/f41_1.xls")
z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "D:/APC/CGC/m41_1.csv")
table2 <- z.f$Anova
write.csv(table2,file = "D:/APC/CGC/f41_1.csv")


jpeg(file="D:/APC/CGC/41-Ireland.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.001,0.01,0.1,1,5,10,20,50,100,200,400,600),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("Ireland", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  


