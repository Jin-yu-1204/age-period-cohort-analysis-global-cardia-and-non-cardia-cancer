
##packages needed---------------------------------------------------------------------------
library(readxl)
library(Epi)
library(tidyverse)
library(grid)
#install.packages("gridtext")
library(gridtext)
library(ggtext)
library(patchwork)

library(readxl)
library(grid)
#c3-6-United States of America------
#上传后的路径为： ../data
m_9 <- read_excel("E:/Example_data/上传数据/m5_9.xls")
f_9 <- read_excel("E:/Example_data/上传数据/f5_9.xls")

z.m<-apc.fit(m_9,mode="factor",parm="ACP",dr.extr="weighted")
z.f<-apc.fit(f_9,mode="factor",parm="ACP",dr.extr="weighted")
table1 <- z.m$Anova
write.csv(table1,file = "E:/Example_data/上传数据/m5_9.csv")
table2 <- z.f$Anova
write.csv(table2,file = "E:/Example_data/上传数据/f5_9.csv")

#上传后的路径为： ../results
jpeg(file="E:/Example_data/上传数据/example.jpg",
     width =2500,  height=2100, units = "px", res=400)
par( mar=c(10,4,1,4) )
fp<-apc.frame(a.lab=seq(20,80,10), cp.lab=seq(1910,2020,10),r.lab=c(0.1,1,5,10,20,50,100,200,400,800),
              r.txt = "Incidence Rate (per 100,000 person-years)",rr.txt ="Rate ratio",gap=10 )

grid.text("example", x = unit(0.5, "npc"), y = unit(0.9, "npc"),
          hjust = 0.5, vjust = 0, gp = gpar(fontsize = 14, fontface = "bold", col = "black"))
apc.lines(z.m,frame=fp,col="black",ci=T)
apc.lines(z.f,frame=fp,col="red",ci=T)
dev.off()  
