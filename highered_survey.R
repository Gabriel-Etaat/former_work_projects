# File:      highered_survey.R
# Author:    Gabriel Etaat
# Created:   28 May 2020
# Last Edit: 28 May 2020
# Purpose:   To analyze the food security data from the HEIG survey

# ------------------------- #
#                           #
#           Setup           #
#                           #
# ------------------------- #

# clear memory
rm(list=ls())

# directory
my_dir  <- "C:/Users/Etaat/Dropbox/side-projects"
setwd(my_dir)

# libraries
library(tidyverse)
library(gtools)
library(ggpubr)
library(stargazer)

# data
survey_df <- read.csv('Food_Security_USDA_Fall_2018.csv', header = T)
survey_df <- survey_df[,18:65] %>% slice(3:629)
  
summary(survey_df)

# subsets

sbcc_certain <- survey_df %>%
  filter(Institution == 'Santa Barbara Community College (SBCC)')
  

