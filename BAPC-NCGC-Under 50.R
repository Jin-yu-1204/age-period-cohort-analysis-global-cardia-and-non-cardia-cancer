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
#c1-1-Argentina----- 
#Male-c1-1-Argentina----------------------------
pop = read.table("D:/POP/POPM1.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/M_1_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM1  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM1)
write.csv(table,file = "D:/ASR_M_1_NCGC.csv")
agespec.proj(resultM1)
table<- agespec.proj(resultM1)
write.csv(table,file = "D:/AgR_M_1_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/1-Argentina.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM1, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-c1-1-Argentina----------------------------
pop = read.table("D:/POP/POPF1.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_1_NCGC.txt", row.names=1, header=F)
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
write.csv(table,file = "D:/ASR_F_1_NCGC.csv")
agespec.proj(resultF1)
table<- agespec.proj(resultF1)
write.csv(table,file = "D:/AgR_F_1_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/1-Argentina.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF1, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#c2-5-Canada----- 
#Male-c2-5-Canada----------------------------
pop = read.table("D:/POP/POPM5.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/M_5_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM5  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM5)
write.csv(table,file = "D:/ASR_M_5_NCGC.csv")
agespec.proj(resultM5)
table<- agespec.proj(resultM5)
write.csv(table,file = "D:/AgR_M_5_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/5-Canada.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM5, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-c2-5-Canada----------------------------
pop = read.table("D:/POP/POPF5.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/F_5_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF5  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF5)
write.csv(table,file = "D:/ASR_F_5_NCGC.csv")
agespec.proj(resultF5)
table<- agespec.proj(resultF5)
write.csv(table,file = "D:/AgR_F_5_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/5-Canada.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF5, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#c3-6-USA----- 
#Male-c3-6-USA----------------------------
pop = read.table("D:/POP/POPM6.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_6_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM6  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM6)
write.csv(table,file = "D:/ASR_M_6_NCGC.csv")
agespec.proj(resultM6)
table<- agespec.proj(resultM6)
write.csv(table,file = "D:/AgR_M_6_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/6-USA.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM6, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#Female-c3-6-USA----------------------------
pop = read.table("D:/POP/POPF6.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_6_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF6  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF6)
write.csv(table,file = "D:/ASR_F_6_NCGC.csv")
agespec.proj(resultF6)
table<- agespec.proj(resultF6)
write.csv(table,file = "D:/AgR_F_6_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/6-USA.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF6, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#c4-7-China----- 
#Male-c4-7-China----------------------------
pop = read.table("D:/POP/POPM7.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_7_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM7  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM7)
write.csv(table,file = "D:/ASR_M_7_NCGC.csv")
agespec.proj(resultM7)
table<- agespec.proj(resultM7)
write.csv(table,file = "D:/AgR_M_7_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/7-China.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM7, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#Female-c4-7-China----------------------------
pop = read.table("D:/POP/POPF7.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_7_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF7  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF7)
write.csv(table,file = "D:/ASR_F_7_NCGC.csv")
agespec.proj(resultF7)
table<- agespec.proj(resultF7)
write.csv(table,file = "D:/AgR_F_7_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/7-China.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF7, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#c5-9-Israel----- 
#Male-c5-9-Israel-------------------------
pop = read.table("D:/POP/POPM9.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_9_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM9  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM9)
write.csv(table,file = "D:/ASR_M_9_NCGC.csv")
agespec.proj(resultM9)
table<- agespec.proj(resultM9)
write.csv(table,file = "D:/AgR_M_9_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/9-Israel.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM9, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-c5-9-Israel------------------
pop = read.table("D:/POP/POPF9.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_9_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF9  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                 model=list(age=list(model="rw2",
                                     prior = "loggamma", param = c(1, 0.005)),
                            period= list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                            cohort=list(include=TRUE, model="rw2",
                                        prior = "loggamma", param = c(1, 0.005)),
                            overdis=list(include=TRUE, model="iid",
                                         prior = "loggamma", param = c(1, 0.005))
                 ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF9)
write.csv(table,file = "D:/ASR_F_9_NCGC.csv")
agespec.proj(resultF9)
table<- agespec.proj(resultF9)
write.csv(table,file = "D:/AgR_F_9_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/9-Israel.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF9, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#c6-10-Japan----- 
#Male-c6-10-Japan----------------------------
pop = read.table("D:/POP/POPM10.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_10_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM10  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM10)
write.csv(table,file = "D:/ASR_M_10_NCGC.csv")
agespec.proj(resultM10)
table<- agespec.proj(resultM10)
write.csv(table,file = "D:/AgR_M_10_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/10-Japan.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM10, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#Female-c4-10-Japan----------------------------
pop = read.table("D:/POP/POPF10.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_10_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF10  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF10)
write.csv(table,file = "D:/ASR_F_10_NCGC.csv")
agespec.proj(resultF10)
table<- agespec.proj(resultF10)
write.csv(table,file = "D:/AgR_F_10_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/10-Japan.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF10, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#7-11-Korea----- 
#Male-7-11-Korea----------------------------
pop = read.table("D:/POP/POPM11.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_11_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM11  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM11)
write.csv(table,file = "D:/ASR_M_11_NCGC.csv")
agespec.proj(resultM11)
table<- agespec.proj(resultM11)
write.csv(table,file = "D:/AgR_M_11_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/11-Korea.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM11, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-c4-11-Korea----------------------------
pop = read.table("D:/POP/POPF11.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_11_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF11  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF11)
write.csv(table,file = "D:/ASR_F_11_NCGC.csv")
agespec.proj(resultF11)
table<- agespec.proj(resultF11)
write.csv(table,file = "D:/AgR_F_11_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/11-Korea.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF11, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#8-13-Thailand----- 
#Male-8-13-Thailand----------
pop = read.table("D:/POP/POPM13.txt", row.names=1, header=F)
#NCGCD:/plot-------------------
counts = read.table("D:/CASE/M_13_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM13  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM13)
write.csv(table,file = "D:/ASR_M_13_NCGC.csv")
agespec.proj(resultM13)
table<- agespec.proj(resultM13)
write.csv(table,file = "D:/AgR_M_13_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/13-Thailand.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM13, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#Female-c8-13-Thailand----------------------------
pop = read.table("D:/POP/POPF13.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_13_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF13  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF13)
write.csv(table,file = "D:/ASR_F_13_NCGC.csv")
agespec.proj(resultF13)
table<- agespec.proj(resultF13)
write.csv(table,file = "D:/AgR_F_13_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/13-Thailand.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF13, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#9-15-Belarus----- 
#Male-9-15-Belarus----------------------------
pop = read.table("D:/POP/POPM15.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_15_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM15  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM15)
write.csv(table,file = "D:/ASR_M_15_NCGC.csv")
agespec.proj(resultM15)
table<- agespec.proj(resultM15)
write.csv(table,file = "D:/AgR_M_15_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/15-Belarus.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM15, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-c4-15-Belarus----------------------------
pop = read.table("D:/POP/POPF15.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/F_15_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF15  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF15)
write.csv(table,file = "D:/ASR_F_15_NCGC.csv")
agespec.proj(resultF15)
table<- agespec.proj(resultF15)
write.csv(table,file = "D:/AgR_F_15_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/15-Belarus.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF15, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#10-16-Czechia----- 
#Male-10-16-Czechia----------------------------
pop = read.table("D:/POP/POPM16.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_16_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM16  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM16)
write.csv(table,file = "D:/ASR_M_16_NCGC.csv")
agespec.proj(resultM16)
table<- agespec.proj(resultM16)
write.csv(table,file = "D:/AgR_M_16_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/16-Czechia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM16, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#Female-10-16-Czechia----------------------------
pop = read.table("D:/POP/POPF16.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_16_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF16  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF16)
write.csv(table,file = "D:/ASR_F_16_NCGC.csv")
agespec.proj(resultF16)
table<- agespec.proj(resultF16)
write.csv(table,file = "D:/AgR_F_16_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/16-Czechia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF16, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#11-17-Denmark----- 
#Male-11-17-Denmark----------------------------
pop = read.table("D:/POP/POPM17.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_17_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM17  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM17)
write.csv(table,file = "D:/ASR_M_17_NCGC.csv")
agespec.proj(resultM17)
table<- agespec.proj(resultM17)
write.csv(table,file = "D:/AgR_M_17_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/17-Denmark.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM17, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-11-17-Denmark----------------------------
pop = read.table("D:/POP/POPF17.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_17_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF17  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF17)
write.csv(table,file = "D:/ASR_F_17_NCGC.csv")
agespec.proj(resultF17)
table<- agespec.proj(resultF17)
write.csv(table,file = "D:/AgR_F_17_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/17-Denmark.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF17, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#12-18-Estonia----- 
#Male-12-18-Estonia----------------------------
pop = read.table("D:/POP/POPM18.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_18_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM18  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM18)
write.csv(table,file = "D:/ASR_M_18_NCGC.csv")
agespec.proj(resultM18)
table<- agespec.proj(resultM18)
write.csv(table,file = "D:/AgR_M_18_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/18-Estonia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM18, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#Female-12-18-Estonia----------------------------
pop = read.table("D:/POP/POPF18.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_18_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF18  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF18)
write.csv(table,file = "D:/ASR_F_18_NCGC.csv")
agespec.proj(resultF18)
table<- agespec.proj(resultF18)
write.csv(table,file = "D:/AgR_F_18_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/18-Estonia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF18, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#13-19-France----- 
#Male-13-19-France----------------------------
pop = read.table("D:/POP/POPM19.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_19_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM19  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM19)
write.csv(table,file = "D:/ASR_M_19_NCGC.csv")
agespec.proj(resultM19)
table<- agespec.proj(resultM19)
write.csv(table,file = "D:/AgR_M_19_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/19-France.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM19, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#Female-13-19-France----------------------------
pop = read.table("D:/POP/POPF19.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_19_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF19  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF19)
write.csv(table,file = "D:/ASR_F_19_NCGC.csv")
agespec.proj(resultF19)
table<- agespec.proj(resultF19)
write.csv(table,file = "D:/AgR_F_19_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/19-France.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF19, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#14-20-Germany----- 
#Male-14-20-Germany----------------------------
pop = read.table("D:/POP/POPM20.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_20_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM20  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM20)
write.csv(table,file = "D:/ASR_M_20_NCGC.csv")
agespec.proj(resultM20)
table<- agespec.proj(resultM20)
write.csv(table,file = "D:/AgR_M_20_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/20-Germany.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM20, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-14-20-Germany------------------
pop = read.table("D:/POP/POPF20.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_20_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF20  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF20)
write.csv(table,file = "D:/ASR_F_20_NCGC.csv")
agespec.proj(resultF20)
table<- agespec.proj(resultF20)
write.csv(table,file = "D:/AgR_F_20_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/20-Germany.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF20, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#15-23-Italy---------

#Male-15-23-Italy----------------------------
pop = read.table("D:/POP/POPM23.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/M_23_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM23  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM23)
write.csv(table,file = "D:/ASR_M_23_NCGC.csv")
agespec.proj(resultM23)
table<- agespec.proj(resultM23)
write.csv(table,file = "D:/AgR_M_23_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/23-Italy.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM23, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-13-23-Italy----------------------------
pop = read.table("D:/POP/POPF23.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_23_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF23  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF23)
write.csv(table,file = "D:/ASR_F_23_NCGC.csv")
agespec.proj(resultF23)
table<- agespec.proj(resultF23)
write.csv(table,file = "D:/AgR_F_23_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/23-Italy.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF23, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#16-25-The Netherlands----- 
#Male-16-25-The Netherlands----------------------------
pop = read.table("D:/POP/POPM25.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/M_25_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM25  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM25)
write.csv(table,file = "D:/ASR_M_25_NCGC.csv")
agespec.proj(resultM25)
table<- agespec.proj(resultM25)
write.csv(table,file = "D:/AgR_M_25_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/25-The Netherlands.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM25, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-16-25-The Netherlands----------------------------
pop = read.table("D:/POP/POPF25.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/F_25_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF25  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF25)
write.csv(table,file = "D:/ASR_F_25_NCGC.csv")
agespec.proj(resultF25)
table<- agespec.proj(resultF25)
write.csv(table,file = "D:/AgR_F_25_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/25-The Netherlands.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF25, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#18-30-Spain---------
#Male-13-30-Spain----------------------------
pop = read.table("D:/POP/POPM30.txt", row.names=1, header=F)


#NCGC
counts = read.table("D:/CASE/M_30_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM30  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM30)
write.csv(table,file = "D:/ASR_M_30_NCGC.csv")
agespec.proj(resultM30)
table<- agespec.proj(resultM30)
write.csv(table,file = "D:/AgR_M_30_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/30-Spain.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM30, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-13-30-Spain----------------------------
pop = read.table("D:/POP/POPF30.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_30_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF30  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF30)
write.csv(table,file = "D:/ASR_F_30_NCGC.csv")
agespec.proj(resultF30)
table<- agespec.proj(resultF30)
write.csv(table,file = "D:/AgR_F_30_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/30-Spain.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF30, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#19-33-United Kingdom---------
#Male-19-33-United Kingdom----------------------------
pop = read.table("D:/POP/POPM33.txt", row.names=1, header=F)#NCGC----->--------
counts = read.table("D:/CASE/M_33_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM33m33  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                     model=list(age=list(model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                                period= list(include=TRUE, model="rw2",
                                             prior = "loggamma", param = c(1, 0.005)),
                                cohort=list(include=TRUE, model="rw2",
                                            prior = "loggamma", param = c(1, 0.005)),
                                overdis=list(include=TRUE, model="iid",
                                             prior = "loggamma", param = c(1, 0.005))
                     ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM33m33)
write.csv(table,file = "D:/ASR_M_33_NCGC.csv")
agespec.proj(resultM33m33)
table<- agespec.proj(resultM33m33)
write.csv(table,file = "D:/AgR_M_33_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/33-United Kingdom.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM33m33, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-13-33-United Kingdom----------------------------
pop = read.table("D:/POP/POPF33.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_33_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF33  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF33)
write.csv(table,file = "D:/ASR_F_33_NCGC.csv")
agespec.proj(resultF33)
table<- agespec.proj(resultF33)
write.csv(table,file = "D:/AgR_F_33_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/33-United Kingdom.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF33, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 


#20-35-Australia---------
#Male-20-35-Australia----------------------------
pop = read.table("D:/POP/POPM35.txt", row.names=1, header=F)
#NCGCD:/plot------------------
counts = read.table("D:/CASE/M_35_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM35  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM35)
write.csv(table,file = "D:/ASR_M_35_NCGC.csv")
agespec.proj(resultM35)
table<- agespec.proj(resultM35)
write.csv(table,file = "D:/AgR_M_35_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/35-Australia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM35, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-13-35-Australia----------------------------
pop = read.table("D:/POP/POPF35.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_35_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF35  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF35)
write.csv(table,file = "D:/ASR_F_35_NCGC.csv")
agespec.proj(resultF35)
table<- agespec.proj(resultF35)
write.csv(table,file = "D:/AgR_F_35_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/35-Australia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF35, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#21-36-New Zealand---------
#Male-21-36-New Zealand----------------------------
pop = read.table("D:/POP/POPM36.txt", row.names=1, header=F)
#NCGC----D:/plot------------------
counts = read.table("D:/CASE/M_36_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM36  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM36)
write.csv(table,file = "D:/ASR_M_36_NCGC.csv")
agespec.proj(resultM36)
table<- agespec.proj(resultM36)
write.csv(table,file = "D:/AgR_M_36_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/36-New Zealand.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM36, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-21-36-New Zealand----------------------------
pop = read.table("D:/POP/POPF36.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_36_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF36  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF36)
write.csv(table,file = "D:/ASR_F_36_NCGC.csv")
agespec.proj(resultF36)
table<- agespec.proj(resultF36)
write.csv(table,file = "D:/AgR_F_36_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/36-New Zealand.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF36, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#22-39-Austria---------

#Male-22-39-Austria----------------------------
pop = read.table("D:/POP/POPM39.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_39_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM39  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
agestd.rate(resultM39)
table <- agestd.rate(resultM39)
write.csv(table,file = "D:/ASR_M_39_NCGC.csv")
agespec.proj(resultM39)
table<- agespec.proj(resultM39)
write.csv(table,file = "D:/AgR_M_39_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/39-Austria.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM39, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-22-39-Austria----------------------------
pop = read.table("D:/POP/POPF39.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_39_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF39  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
agestd.rate(resultF39)
table <- agestd.rate(resultF39)
write.csv(table,file = "D:/ASR_F_39_NCGC.csv")
agespec.proj(resultF39)
table<- agespec.proj(resultF39)
write.csv(table,file = "D:/AgR_F_39_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/39-Austria.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF39, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#23-40-Iceland---------

#23-40-Iceland----- 
#Male-23-40-Iceland----------------------------
pop = read.table("D:/POP/POPM40.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_40_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM40  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM40)
write.csv(table,file = "D:/ASR_M_40_NCGC.csv")
agespec.proj(resultM40)
table<- agespec.proj(resultM40)
write.csv(table,file = "D:/AgR_M_40_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/40-Iceland.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM40, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-23-40-Iceland----------------------------
pop = read.table("D:/POP/POPF40.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_40_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF40  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF40)
write.csv(table,file = "D:/ASR_F_40_NCGC.csv")
agespec.proj(resultF40)
table<- agespec.proj(resultF40)
write.csv(table,file = "D:/AgR_F_40_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/40-Iceland.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF40, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#24-42-Malta---------
#Male-24-42-Malta----------------------------
pop = read.table("D:/POP/POPM42.txt", row.names=1, header=F)

#NCGC
counts = read.table("D:/CASE/M_42_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM42  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM42)
write.csv(table,file = "D:/ASR_M_42_NCGC.csv")
agespec.proj(resultM42)
table<- agespec.proj(resultM42)
write.csv(table,file = "D:/AgR_M_42_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/42-Malta.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM42, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-24-42-Malta----------------------------
pop = read.table("D:/POP/POPF42.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_42_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF42  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF42)
write.csv(table,file = "D:/ASR_F_42_NCGC.csv")
agespec.proj(resultF42)
table<- agespec.proj(resultF42)
write.csv(table,file = "D:/AgR_F_42_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/42-Malta.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF42, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#25-43-Slovenia---------

#Male-25-43-Slovenia----------------------------
pop = read.table("D:/POP/POPM43.txt", row.names=1, header=F)
#NCGC------------------
counts = read.table("D:/CASE/M_43_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM43  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM43)
write.csv(table,file = "D:/ASR_M_43_NCGC.csv")
agespec.proj(resultM43)
table<- agespec.proj(resultM43)
write.csv(table,file = "D:/AgR_M_43_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/43-Slovenia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM43, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-13-43-Slovenia----------------------------
pop = read.table("D:/POP/POPF43.txt", row.names=1, header=F)
#NCGC-------------------
counts = read.table("D:/CASE/F_43_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF43  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF43)
write.csv(table,file = "D:/ASR_F_43_NCGC.csv")
agespec.proj(resultF43)
table<- agespec.proj(resultF43)
write.csv(table,file = "D:/AgR_F_43_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/43-Slovenia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF43, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#26-24-Latvia---------

#26-24-Latvia----- 
#Male-26-24-Latvia----------------------------
pop = read.table("D:/POP/POPM24.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_24_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM24  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM24)
write.csv(table,file = "D:/ASR_M_24_NCGC.csv")
agespec.proj(resultM24)
table<- agespec.proj(resultM24)
write.csv(table,file = "D:/AgR_M_24_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/24-Latvia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM24, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-26-24-Latvia----------------------------
pop = read.table("D:/POP/POPF24.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_24_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF24  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF24)
write.csv(table,file = "D:/ASR_F_24_NCGC.csv")
agespec.proj(resultF24)
table<- agespec.proj(resultF24)
write.csv(table,file = "D:/AgR_F_24_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/24-Latvia.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF24, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#27-32-Switzerland---------

#27-32-Switzerland----- 
#Male-27-32-Switzerland----------------------------
pop = read.table("D:/POP/POPM32.txt", row.names=1, header=F)
#NCGC----D:/plot-------------------
counts = read.table("D:/CASE/M_32_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM32  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM32)
write.csv(table,file = "D:/ASR_M_32_NCGC.csv")
agespec.proj(resultM32)
table<- agespec.proj(resultM32)
write.csv(table,file = "D:/AgR_M_32_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/32-Switzerland.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM32, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-27-32-Switzerland----------------------------
pop = read.table("D:/POP/POPF32.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_32_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF32  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF32)
write.csv(table,file = "D:/ASR_F_32_NCGC.csv")
agespec.proj(resultF32)
table<- agespec.proj(resultF32)
write.csv(table,file = "D:/AgR_F_32_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/32-Switzerland.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF32, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

#28-41-Ireland---------
#Male-28-41-Ireland----------------------------
pop = read.table("D:/POP/POPM41.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/M_41_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultM41  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultM41)
write.csv(table,file = "D:/ASR_M_41_NCGC.csv")
agespec.proj(resultM41)
table<- agespec.proj(resultM41)
write.csv(table,file = "D:/AgR_M_41_NCGC.csv")
jpeg(file="D:/plot/M_NCGC/41-Ireland.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultM41, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 
#Female-28-41-Ireland----------------------------
pop = read.table("D:/POP/POPF41.txt", row.names=1, header=F)
#NCGC
counts = read.table("D:/CASE/F_41_NCGC.txt", row.names=1, header=F)
cm.APC = APCList(counts, pop, gf=1, agelab=agegroup)
resultF41  <-BAPC(cm.APC, predict=list(npredict=3, retro=FALSE),
                  model=list(age=list(model="rw2",
                                      prior = "loggamma", param = c(1, 0.005)),
                             period= list(include=TRUE, model="rw2",
                                          prior = "loggamma", param = c(1, 0.005)),
                             cohort=list(include=TRUE, model="rw2",
                                         prior = "loggamma", param = c(1, 0.005)),
                             overdis=list(include=TRUE, model="iid",
                                          prior = "loggamma", param = c(1, 0.005))
                  ),stdweight=stdpop[1:10,2])
table <- agestd.rate(resultF41)
write.csv(table,file = "D:/ASR_F_41_NCGC.csv")
agespec.proj(resultF41)
table<- agespec.proj(resultF41)
write.csv(table,file = "D:/AgR_F_41_NCGC.csv")
jpeg(file="D:/plot/F_NCGC/41-Ireland.jpg",
     width =2000,  height=1800, units = "px", res=400)
plotBAPC(resultF41, scale=100000, type="ageStdRate",obs.lwd=0,obs.cex=1.2,
         probs = seq(0.05, 0.95, by=0.1))
dev.off() 

