#some packges may be useful
library(Epi)
library(BAPC)
library(Matrix)
library(foreach)
library(parallel)
library(sp)
library(maptools)
library(rgeos)
library(randomcoloR)
library(tidyverse)
library(ggplot2)
library(dplyr)
library(ggsci)
library(ggpubr)
library(parallel)
library(foreach)
library(parallel)
library(Matrix)
library(sp)
library(caTools)
library(Epi)
library(fanplot)
library(colorspace)
library(BAPC)
library(INLA)


library(Epi)
library(Matrix)
library(sp)
library(caTools)
library(fanplot)
library(BAPC)
library(INLA)
packageVersion("BAPC")
packageVersion("INLA")
#c1-1-Argentina----- 
#Male-c1-1-Argentina----------------------------

#STANDARD POPULATION BY AGE GROUP
stdpop = read.table("E:/Example_data/stdpop.txt",  header=F)
agegroup = c("0-4","5-9" ,"10-14","15-19","20-24","25-29",  "30-34", "35-39", "40-44", "45-49")

#population data
pop = read.table("E:/Example_data/POPM1.txt", row.names=1, header=F)
#NCGC
counts = read.table("E:/Example_data/M_1_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
result_MALE1  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(result_MALE1)
write.csv(table,file = "E:/Example_data/ASR_M_1_NCGC.csv")
agespec.proj(result_MALE1)
table<- agespec.proj(result_MALE1)
write.csv(table,file = "E:/Example_data/AgR_M_1_NCGC.csv")
jpeg(file="E:/Example_data/BAPC_MALE_EXAMPLE.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(result_MALE1, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-c1-1-Argentina----------------------------
#population data
pop = read.table("E:/Example_data/POPF1.txt", row.names=1, header=F)
#NCGC
counts = read.table("E:/Example_data/F_1_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF1  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF1)
write.csv(table,file = "E:/Example_data/ASR_F_1_NCGC.csv")
agespec.proj(resultF1)
table<- agespec.proj(resultF1)
write.csv(table,file = "E:/Example_data/AgR_F_1_NCGC.csv")
jpeg(file="E:/Example_data/BAPC_FEMALE_EXAMPLE.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF1, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
