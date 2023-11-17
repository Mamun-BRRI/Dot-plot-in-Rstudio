### Draw a dot plot
R<-read.csv("Data.csv")
R
attach(R)

##
library(ggplot2)
## Theme dark
ggplot(R,aes(x=GP,y=GY,color=Genotype))+
  geom_point(size=3,aes(shape=factor(Location)))+
  geom_text(label=PN,nudge_x = 0.25,nudge_y = 0.25,check_overlap = F)+
  theme_dark()+
  theme(axis.title.x = element_text(size = 16,color = "blue"),
        axis.title.y = element_text(size = 16,color = "red"),
        axis.text.x = element_text(size = 14,color = "black",angle = 0),
        axis.text.y = element_text(size = 20,color = "black",angle = 0))
ggsave("Figure1.png",height = 7,width = 14,dpi=200)

## Theme classic
ggplot(R,aes(x=GP,y=GY,color=Genotype))+
  geom_point(size=3,aes(shape=factor(Location)))+
  geom_text(label=PN,nudge_x = 0.25,nudge_y = 0.25,check_overlap = F)+
  theme_classic()+
  theme(axis.title.x = element_text(size = 16,color = "blue"),
        axis.title.y = element_text(size = 16,color = "red"),
        axis.text.x = element_text(size = 14,color = "black",angle = 0),
        axis.text.y = element_text(size = 20,color = "black",angle = 0))+
  facet_wrap(.~Genotype)
ggsave("Figure2.png",height = 7,width = 14,dpi=200)

## Theme classic
ggplot(R,aes(x=GP,y=GY,color=Genotype))+
  geom_point(size=3,aes(shape=factor(Location)))+
    theme_bw()+
  theme(axis.title.x = element_text(size = 16,color = "blue"),
        axis.title.y = element_text(size = 16,color = "red"),
        axis.text.x = element_text(size = 14,color = "black",angle = 0),
        axis.text.y = element_text(size = 20,color = "black",angle = 0))
ggsave("Figure3.png",height = 7,width = 14,dpi=200)
