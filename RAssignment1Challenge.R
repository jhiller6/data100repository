rm(list=ls(all=TRUE))
# install.packages("tidyverse", dependencies = TRUE)
# install.packages("sf", dependencies = TRUE)
library(tidyverse)
library(sf)
getwd()
setwd("/Users/jhill/OneDrive/Documents/W&M School Work/Wicked Problems/Assignment 1/Data")
tgo_int <- read_sf("/Users/jhill/OneDrive/Documents/W&M School Work/Wicked Problems/Assignment 1/Data/gadm36_TGO_shp/gadm36_TGO_0.shp")
tgo_adm1 <- read_sf("/Users/jhill/OneDrive/Documents/W&M School Work/Wicked Problems/Assignment 1/Data/gadm36_TGO_shp/gadm36_TGO_1.shp")
tgo_adm2 <- read_sf("/Users/jhill/OneDrive/Documents/W&M School Work/Wicked Problems/Assignment 1/Data/gadm36_TGO_shp/gadm36_TGO_2.shp")
ggplot() +
  geom_sf(data = tgo_adm2,
          size = .25,
          color = "gray75",
          fill = "gold3",
          alpha = .4) +
  geom_sf(data = tgo_adm1,
          size = .65,
          color = "gray50",
          fill = "gold3",
          alpha = 0) +
  geom_sf(data = tgo_int,
          size = 1,
          color = "black",
          fill = "green",
          alpha = 0) +
  geom_sf_text(data = tgo_adm1,
               aes(label = NAME_1),
               size = 2,
               color = "black") +
  geom_sf_label(data = tgo_adm2,
                aes(label = NAME_2),
                size = 1,
                color = "black") +
  xlab("longitude") + ylab("longitude") +
  ggtitle("Togo") +
  theme(plot.title = element_text(hjust = .5))
ggsave("togo.png")