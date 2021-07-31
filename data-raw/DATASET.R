## code to prepare `DATASET` dataset goes here
# usethis::use_data(DATASET, overwrite = TRUE)


# library(tidyverse)
# library(devtools)
# library(roxygen2)
# library(testthat)
# library(fs)

# install package created
# devtools::install_github("AleaWM/cuppackage")

# recruits <- read_csv("recruits.csv")
# usethis::use_data(recruits)


DisasterDeclarations <- read_xlsx("C:/Users/aleaw/OneDrive/Desktop/PhD Spring 2021/Project Data/DisasterDeclarationsSummaries.xlsx")


DisasterSummary<- DisasterDeclarations %>%
  select(femaDeclarationString:declarationTitle, fipsStateCode:declarationRequestNumber) %>%
  filter(designatedArea == c("Broward (County)", "Miami-Dade (County)"),
         fipsCountyCode > 0) %>%
  group_by(fipsStateCode, fipsCountyCode, designatedArea, fyDeclared, incidentType) %>%
  summarize(declarations = n())
# broward <- read_csv("BrowardDisasters.csv")
# usethis::use_data(broward)

disasterswide <-pivot_wider(DisasterSummary,
                            names_from = c(fyDeclared),
                            names_sep = "_",
                            values_from = c(declarations))

Claims <- read_csv("C:/Users/aleaw/OneDrive/Desktop/PhD Spring 2021/Project Data/SampleFiles/FEMAClaims.csv")

claimssummary <- Claims %>%
  select(countyCode, state, yearOfLoss)%>%
  filter(countyCode == c("12011" , "12086"),
         yearOfLoss > 1999) %>%
  group_by(countyCode, state, yearOfLoss) %>%
  summarize(claims = n())
usethis::use_data(claimssummary)

# texasenergy <- read.table(file = "clipboard", sep = "\t", header = TRUE)
# texasenergy
# usethis::use_data(texasenergy)
#
# texastemperature <- read.table(file = "clipboard", sep = "\t", header = TRUE)
# usethis::use_data(texastemperature)

wealth <- read.table(file = "clipboard", sep = "\t", header = TRUE)
usethis::use_data(wealth)

quartets <- as.data.frame(stevedata::quartets)
usethis::use_data(quartets)
