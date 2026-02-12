
mean_na<-function(x){mean(x,na.rm=TRUE)}
se<-function(x){sd(x,na.rm=TRUE)/sqrt(sum(!is.na(x)))}
length_na<-function(x){sum(!is.na(x))}
sd_na<-function(x){sd(x,na.rm=TRUE)}

extr_lm<-function(x){
  pvalue<-summary(x)$coefficients[2,4]
  r2<-summary(x)$r.squared
  adj_r2<-summary(x)$adj.r.squared

  lm_formula<-as.character(x[["call"]])[2]
  numdf<-summary(x)$fstatistic[2]
  dendf<-summary(x)$fstatistic[3]
  #lm_formula<-2
  data.frame(numdf=numdf,dendf=dendf,pvalue=pvalue,r2=r2,adj_r2=adj_r2,lm_formula=lm_formula)
}




extr_lmer<-function(x){
  lmer_formula<-as.character(x@call)[2]
  pvalue<-anova(x)[[6]]
  numDF<-anova(x)[[3]]
  denDF<-anova(x)[[4]]
  Fvalue<-anova(x)[[5]]
  cond_r2<-r2_nakagawa(x)[[1]]
  marg_r2<-r2_nakagawa(x)[[2]]

  statsret<-data.frame(lmer_formula=lmer_formula,pvalue=pvalue,numDF=numDF,denDF=denDF,Fvalue=Fvalue,cond_r2=cond_r2,marg_r2=marg_r2)
  return(statsret)
}



