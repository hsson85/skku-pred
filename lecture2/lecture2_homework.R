summarise(ames_raw)

AmesHousing::ames_raw


library(AmesHousing)
head(ames_raw)
glimpse(ames_raw)

ames_raw %>% 
  filter('MS SubClass' == "020")

head(ames_raw)

ames_raw %>% 
  filter('MS SubClass' == "20")

ames_raw %>%
  filter('Roof Matl' == "CompShg")

head(ames_raw)
ames_raw %>%
  filter('MS SubClass' == 020)

summarise(ames_raw)

ames_raw %>%
  filter(Neighborhood == "Veenker")

ames_raw %>%
  filter(Utilities == "AllPub")

ames_raw %>%
  group_by(Street) %>%
  summarize(`SalePrice`= mean(`SalePrice`,  na.rm = TRUE),
            `Lot Frontage` = mean(`Lot Frontage`, na.rm = TRUE))

ames_raw %>%
  filter(Street == "Pave") 

library(ggplot2)
   
p<-ggplot(data = ames_raw %>%
            group_by(Street),
          aes(x=`Year Built`,
              y=`Lot Frontage`))
p<- p + geom_point(aes(color = as.factor(Street)))
p

g<-ggplot(data = ames_raw %>%
            group_by(Neighborhood),
          aes(x=`Year Built`,
              y=`Lot Frontage`))
g<- g + geom_point(aes(color = as.factor(Neighborhood)))
g

h<-ggplot(data = ames_raw %>%
            group_by(`Lot Shape`),
          aes(x=`Year Built`,
              y=`SalePrice`))
h<- h + geom_point(aes(color = as.factor(`Lot Shape`)))
h

h<-ggplot(data = ames_raw %>%
            group_by(`Sale Condition`),
          aes(x=`Year Built`,
              y=`SalePrice`))
h<- h + geom_point(aes(color = as.factor(`Sale Condition`)))
h

h<-ggplot(data = ames_raw %>%
            filter(`Sale Condition`== "Family"),
          aes(x=`Year Built`,
              y=`SalePrice`))
h<- h + geom_point(aes(color = as.factor(`Sale Condition`)))
h

s<-ggplot(data = ames_raw %>%
            group_by(`Year Built`),
          aes(x= Street,
              y=`SalePrice`))
s<- s + geom_point(aes(color = as.factor(`Year Built`)))
s

ames_raw %>%
  group_by(`Sale Condition`) %>%
  summarize(`SalePrice`= mean(`SalePrice`,  na.rm = TRUE))

ames_raw %>%
  select(Street,`Year Built`,`SalePrice`) %>%
  filter(Street == "Pave") 

ames_raw %>%
  group_by(`Yr Sold`) %>%
  summarize(`SalePrice`= mean(`SalePrice`,  na.rm = TRUE))

h<-ggplot(data = ames_raw %>%
          group_by(`Yr Sold`) %>%
          summarize(`SalePrice`= mean(`SalePrice`,  na.rm = TRUE)),
          aes(x= `Yr Sold`,
              y= `SalePrice`))
h<- h + geom_point(aes(color = as.factor(`Yr Sold`)))
h

h<-ggplot(data = ames_raw %>%
            group_by(`Yr Sold`),
          aes(x= `Yr Sold`,
              y= `SalePrice`))
h<- h + geom_point(aes(color = as.factor(`Yr Sold`)))
h

ggplot(ames_raw, aes(x = `Year Built`)) + geom_histogram(binwidth = 0.5)


