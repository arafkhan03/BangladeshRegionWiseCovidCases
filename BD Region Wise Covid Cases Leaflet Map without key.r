# I am going to use Cramstack API (a Bangladeshi Data Company) to pull COVID Data
# for Bangladesh (region-wise). Please note, I have secured a key from them which
# I can't show here for privacy reasons

install.packages(c("httr", "jsonlite", "hrbrthemes"))
install.packages("hrbrthemes")

library(httr)
library(jsonlite)
library(tidyverse)
library(hrbrthemes)

httr::add_headers()

res <- GET(url = "https://corona-api.cramstack.com",
           add_headers("x-api-key" = "--------------------"))

res
rawToChar(res$content)
data = fromJSON(rawToChar(res$content))
df <- lapply(data, as.data.frame)

invisible(lapply(data,function(data) 
        assign(sheet,readWorksheet (wb, sheet = sheet ),pos=1)))

for(i in 1:length(data)) {
        assign(paste0("a.", i), data[[i]])
}
a.2$Date <- as.Date(a.2$Date)
pairs(a.2)

# Manipulating the Data-frame
a.5 <- str_split_fixed(a.5$lat_lon, ",", 2)

bdcovid <- data.frame(name = a.5$district_city_eng,
                      cases = a.5$cases,
                      lat = a.5$"1",
                      lng = a.5$"2")

# Creating the COVID data-set for Bangladesh
options(digits = 9)
bdcovid$lat <- as.numeric(bdcovid$lat)
bdcovid$lng <- as.numeric(bdcovid$lng)
str(bdcovid)

# Construction of COVID cases of Bangladesh by region leaflet map. 
#The circle radius is according to the number of cases

bdcovid %>% leaflet() %>% addTiles() %>%
        addCircles(weight = 1, radius = bdcovid$cases*5)