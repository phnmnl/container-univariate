FROM ubuntu:16.04

MAINTAINER Etienne Thevenot (etienne.thevenot@cea.fr)

# Update system, install requirements, clone package, copy files, delete git and cleanup.
RUN apt-get update && apt-get install -y --no-install-recommends r-base git && \
    git clone -b docker https://github.com/phnmnl/univariate /files/univariate-clone && \
    mkdir -p /files/univariate && cp /files/univariate-clone/*.R /files/univariate && \
    rm -rf /files/univariate-clone && \
    echo 'options("repos"="http://cran.rstudio.com")' >> /etc/R/Rprofile.site && \
    R -e "install.packages(c('batch','PMCMR'), dependencies = TRUE)" && \
    apt-get purge -y git && \
    apt-get clean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*

# Make wrapper executable
RUN cp /files/univariate/*.R /usr/local/bin/
RUN chmod a+rx /usr/local/bin/univariate_wrapper.R

# Define Entry point script
ENTRYPOINT ["/files/univariate/univariate_wrapper.R"]
