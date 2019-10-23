calc<-function(x,y){
  c<-drg.data %>%
    filter(DRG==x) %>%
    group_by(DRG) %>%
    summarise(mean=mean(Average.Medicare.Payments),
              median=median(Average.Medicare.Payments),
              sd=sd(Average.Medicare.Payments)) %>%
    select(y)
  c
}
