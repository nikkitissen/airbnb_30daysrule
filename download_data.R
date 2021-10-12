######################
### DOWNLOAD DATA ####
######################
download_data <- function(url, filename){
  download.file(url = url, destfile = paste0(filename, ".csv"))
}

url_listings <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2021-09-07/data/listings.csv.gz"

download_data(url_listings, "listings")

listings <- read.csv("listings.csv")
View(listings)