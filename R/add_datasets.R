library(tidyverse)
library(devtools)
library(roxygen2)
library(testthat)
library(fs)

recruits <- read_csv("recruits.csv")
devtools::use_data(recruits)

devtools::load_all()
devtools::document
available(cuppackage)


# install package created
#devtools::install_github("AleaWM/cuppackage")
