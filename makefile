all: download_data preparation analysis graphs

listings.csv: download_data.R
  R --vanilla < src/preparation/download_data.R

plot_all.pdf: download_data.R
  R --vanilla < src/preparation/preparation.R

plot_all.pdf: download_data.R
  R --vanilla < src/analysis/analysis.R

plot_all.pdf: download_data.R
  R --vanilla < src/paper/graphs.R
