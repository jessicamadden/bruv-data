library(tidyverse)
library(here)
library(janitor)

sp <- read.csv(here("data", "MPA_sp_codes_fish.csv")) %>% 
  clean_names()
  
em_list <- read.delim(here("data", "mpa_BRUV_specieslist.txt"), sep = "\t") %>% 
  clean_names()

sp_join <- sp %>% 
  full_join(em_list, by = c("common_name" = "common"))

write.csv(sp_join, "file:///C:/Users/Crab Lab/Box/Crab Lab Group Folder/MPA Project/mpa_project_code/bruv-data/data//sp_join.csv")
