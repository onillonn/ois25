# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .R
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.16.4
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

#TP4 exercice 11
population<-2000 #population initiale
observationID<-c()
Populations<-c()
#52 semaines
for (semaine in 1:52){
    observationID<-c(observationID,semaine) #ajoute le n° de la semaine
    Populations<-c(Populations,round(population)) #ajoute population arrondie
    #survie pour chaque poisson
    mort<-0
    for (poisson in 1:population){
        probmort<-sample(1:1000,1) 
        if (probmort<100){ #10% de mort
            mort<-mort+1
        }
    }
    population<-population-mort
}
plot (observationID,Populations,
     main="Population en fct de la semaine",xlab="n° semaine",ylab="population",cex.lab=1.3,
     col="blue",type="l")


