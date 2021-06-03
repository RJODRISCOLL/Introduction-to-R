
#Additional exercise
#1
ggplot(data=happiness_2016, aes(x = fct_reorder(Region, Happiness_Score ), y = Happiness_Score, fill = Region))+
  geom_violin()+
  geom_jitter(width=0.1,alpha=0.2)+
  coord_flip()+
  ggtitle("Happiness score by regions")+
  theme_hc()+
  theme(legend.position = "none")+
  theme(axis.title.y = element_blank())

#2  
ggplot(data=happiness_2016, aes(x = fct_reorder(Region, Happiness_Score ), y = Happiness_Score, fill = Region))+
  geom_violin()+
  geom_jitter(width=0.1,alpha=0.2)+
  coord_flip()+
  ggtitle("Happiness score by regions")+
  scale_fill_grey()+
  theme_hc()+
  theme(legend.position = "none")+
  theme(axis.title.y = element_blank())