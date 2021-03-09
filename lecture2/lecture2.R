library(palmerpenguins)
library(tidyverse)
library(palmerpenguins)



penguins

summarise(penguins)

head(penguins)

penguins %>% 
  filter(species == "Chinstrap")

penguins %>% 
  filter(species == "Chinstrap", island == "Dream")


penguins %>% 
  filter(species %in% c("Chinstrap", "Adelie"))

penguins %>% 
  select(species, bill_length_mm, bill_depth_mm) %>% 
  head()

penguins %>% 
  select(bill_length_mm:body_mass_g)

penguins %>% 
  group_by(species) %>% 
  summarize(bill_length_mean = mean(bill_length_mm,  na.rm = TRUE),
            bill_depth_mean = mean(bill_depth_mm, na.rm = TRUE))

library(ggplot2)
p <- ggplot(data = penguins)
p

p <- ggplot(data = penguins,
            aes(x = bill_length_mm,
                y = bill_depth_mm))
p

p <- p + 
  geom_point(aes(color = as_factor(species), 
                 size = body_mass_g,
                 alpha = 0.7))

p + scale_y_continuous(
  "Bill depth (mm)",
  breaks = seq(0, 30, by = 1)
)
p
