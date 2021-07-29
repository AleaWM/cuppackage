library(tidyverse)
library(devtools)
packageVersion("devtools")
library(roxygen2)
library(testthat)
library(fs)

recruits <- read_csv("recruits.csv")
devtools::use_data(recruits)

devtools::load_all()
devtools::document
available(cuppackage)
