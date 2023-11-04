library(readxl)
Tobacco <- read_excel("Desktop/Tabacco.xlsx")
View(Tobacco)

install.packages("ggplot2")
library(ggplot2)

cig_ever <- lm(tax ~ cig_ever, data = Tobacco)
summary(cig_ever)

ggplot(data=Tobacco, aes(x=tax, y=cig_ever)) +
  geom_point(color="blue") +
  geom_smooth(method="lm", se=FALSE, color="red") + 
  ggtitle("ENDS tax vs Percentage of students every smoked cigarettes") +
  xlab("ENDS tax/ml") +
  ylab("cigarette ever")

cig_use <- lm(tax ~ cig_use, data = Tobacco)
summary(cig_use)

ggplot(data=Tobacco, aes(x=tax, y=cig_use)) +
  geom_point(color="blue") +
  geom_smooth(method="lm", se=FALSE, color="red") + 
  ggtitle("ENDS v.s. Percentage of students currently smoking cigarettes") +
  xlab("ENDS tax/ml") +
  ylab("cigarette use")

vap_ever <- lm(tax ~ vap_ever, data = Tobacco)
summary(vap_ever)

ggplot(data=Tobacco, aes(x=tax, y=vap_ever)) +
  geom_point(color="blue") +
  geom_smooth(method="lm", se=FALSE, color="red") + 
  ggtitle("ENDS tax vs Percentage of students ever vaped") +
  xlab("ENDS tax/ml") +
  ylab("vaping ever")

vap_use <- lm(tax ~ vap_use, data = Tobacco)
summary(vap_use)

ggplot(data=Tobacco, aes(x=tax, y=vap_use)) +
  geom_point(color="blue") +
  geom_smooth(method="lm", se=FALSE, color="red") + 
  ggtitle("ENDS v.s. Percentage of students currently vaping") +
  xlab("ENDS tax/ml") +
  ylab("vapor use")
