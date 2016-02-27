library(ggplot2)
y <- sin(seq(1,15*pi,by = 0.05))
y <- y + runif(length(y))
d = data.frame(x = 1:length(y), y)

png(filename = "~/lfjover.github.io/figures/banner.png", width = 840, height = 120)
p <- ggplot(aes(x,y),data =d) + geom_line(size = 1) + 
  stat_smooth(method = "lm", formula = y ~ poly(x,20), size = 1) +
  theme(axis.ticks=element_blank(), axis.title = element_blank(), axis.text = element_blank())
print(p)
dev.off()

n <- 200
x1 <- seq(-5*pi,5*pi, length.out = n )
y1 <- sin(x1-pi/4) + rnorm(n,0,0.05)
y2 <- cos(x1) + rnorm(n,0,0.05)
siz <- sample(3,n*2, replace = TRUE)
c1 <- sample(3,n, replace = TRUE)
c2 <- sample(4:6,n, replace = TRUE)

d2 <- data.frame(x = c(x1,x1),y=c(y1,y2),col = c(c1,c2),siz)
p<-ggplot(data =d2) + geom_point(aes(x,y,size = siz,color = factor(col)))  + 
  scale_color_manual(values = c('#FFFF00','#FFCC66','#FF9933','#003399','#6699FF','#66CCFF')) +
  scale_size_continuous(range = c(1, 3)) + theme_bw()+
  theme(axis.ticks=element_blank(), axis.title = element_blank(),
        axis.text = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        legend.position = 'none')
p

png(filename = "~/lfjover.github.io/figures/banner.png", width = 840, height = 120)
p
dev.off()