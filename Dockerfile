# docker build --tag testr1 .
# docker run -it --rm testr1
FROM debian:stable

# Install R
# https://cran.r-project.org/bin/linux/debian/
RUN apt-get update
RUN apt-get install r-base r-base-dev -y

# Install R packages
RUN Rscript -e "install.packages('cowsay')"
