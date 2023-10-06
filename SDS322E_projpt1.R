library(ggplot2)

mixbev <- read.csv("mixbev_txsub.csv")
ggplot(data=mixbev, aes(x=Total.Receipts, y=Liquor.Receipts, color = as.factor(Taxpayer.County))) +
  labs(x= "Total Reciepts (dollars)", y="Total Liquor Receipts (dollars)", title = "Total Receipts over Liquor Receipts") +
  geom_point()+
  theme(legend.position = 'none')

boxplot(Total.Receipts~Inside.Outside.City.Limits,data=mixbev, main="Inside/Outside City Limits",
        xlab="Inside City Limits (yes/no)", ylab="Total Alcohol Receipt (dollars)", col=(c("blue","darkgreen")))


