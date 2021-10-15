all: data/listings.csv gen/temp/listingssub.csv gen/output/plot_all_graphs.pfd

## sub-builds

data/listings.csv: src/preparation/download_data.R
	R --vanilla < src/preparation/download_data.R

gen/temp/listingssub.csv: src/preparation/preparation.R
	R --vanilla < src/preparation/preparation.R

gen/output/plot_all_graphs.pfd: src/Paper/graphs.R
	R --vanilla < src/Paper/graphs.R