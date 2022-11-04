library(rvest)
library(dplyr)
link<-"https://ceoworld.biz/2017/11/08/the-100-most-influential-people-in-history/"
web<-read_html(link)
rank<-web %>%html_nodes(".row-hover .column-1")%>%html_text()
View(rank)
name<-web %>%html_nodes(".row-hover .column-2")%>%html_text()
View(name)
country<-web%>%html_nodes(".row-hover .column-3")%>%html_text()
View(country)
influencedleaders<-data.frame(rank,name,country)
View(influencedleaders)
write.csv(influencedleaders,"100 influenced leaders.csv")

