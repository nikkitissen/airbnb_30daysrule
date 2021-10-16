all: data/listings.csv gen/temp/listingssub.csv gen/output/assumptions.pdf gen/output/anova1.doc gen/output/anova2.doc gen/output/anova3.doc gen/output/anova4.doc gen/output/plot_all_graphs.pfd

## sub-builds

data/listings.csv: src/preparation/download_data.R
	R --vanilla < src/preparation/download_data.R

gen/temp/listingssub.csv: src/preparation/preparation.R
	R --vanilla < src/preparation/preparation.R

gen/output/assumptions.pdf: src/analysis/analysis.R
	R --vanilla < src/analysis/analysis.R

gen/output/anova1.doc: src/analysis/analysis.R
	R --vanilla < src/analysis/analysis.R

gen/output/anova2.doc: src/analysis/analysis.R
	R --vanilla < src/analysis/analysis.R

gen/output/anova3.doc: src/analysis/analysis.R
	R --vanilla < src/analysis/analysis.R

gen/output/anova4.doc: src/analysis/analysis.R
	R --vanilla < src/analysis/analysis.R

gen/output/plot_all_graphs.pfd: src/Paper/graphs.R
	R --vanilla < src/Paper/graphs.R