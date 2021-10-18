######################
### DOWNLOAD DATA ####
######################

# create dictionary
dir.create(("data"), showWarnings = FALSE)

# To download the data programmatically from the web; downloads a file from a URL and stores it on your local machine. 
download_data <- function(url, filename, filepath){
  dir.create(filepath)
  download.file(url = url, destfile = paste0(filepath,filename, ".csv"))
}

# Downloading the raw listings data for the city Amsterdam
url_listings <- "http://data.insideairbnb.com/the-netherlands/north-holland/amsterdam/2021-09-07/data/listings.csv.gz"

# store data in data folder
download_data(url_listings, "listings", 'data/')





