main <- read_csv("Downloads/Melissa/netlogo/netlogo_proj-master/main.csv", 
                    skip = 15)
main=main[,-c(4,5)]

main=as.data.frame(main)

write.table(main,'Downloads/Melissa/netlogo/netlogo_proj-master/traited.xls',sep='\t')

install.packages("devtools")  # so we can install from github
library("devtools")
install_github("ropensci/plotly")  # plotly is part of ropensci
library(plotly)

py <- ggplotly(username="r_user_guide", key="mw5isa4yqp")  # open plotly connection


p <- ggplot(main, aes(x=pxcor,y=main[,c(6,7)]))

p <- p + geom_tile(aes(fill=pcolor))

py$ggplotly(p)



d=main[seq(101,111),c(1,6,7)]
d=as.data.frame(d)
write.ftable(d,"Downloads/Melissa/netlogo/netlogo_proj-master/d.xls",sep='\t')
