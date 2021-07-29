library(tidyverse)
library(devtools)
library(roxygen2)
library(testthat)
library(fs)

recruits <- read_csv("recruits.csv")
usethis::use_data(recruits)


# install package created
#devtools::install_github("AleaWM/cuppackage")

broward <- read_csv("BrowardDisasters.csv")
usethis::use_data(broward)
