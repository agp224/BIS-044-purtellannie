collegeinfo <- read.csv("most-recent-coherts-all-data-elements-1.csv")
collegeinfo2 <- collegeinfo %>% 
  select(HIGHDEG, STABBR) %>% 
  mutate(HIGHDEG = factor(HIGHDEG, 0:5)
  collegeinfo2%>%
   ggplot(aes(HIGHDEG)) +
   geom_bar() +
    facet_wrap(vars(STABBR)) +
    scale_x_discrete('Highest Degree'
drop = FALSE) +
    ylab('Frequency')
    ggtitlw('Highest Degree by State') 
                                                                