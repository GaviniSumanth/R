# Environment for r programming
# Version: 1.0

FROM r-base:latest

RUN apt-get update && apt-get install -y build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev git

# install r packages
RUN R -e "install.packages('languageserver', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggplot2', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggExtra', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dplyr', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shiny', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('bslib', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('thematic', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rjson', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('types', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('roxygen2', repos='http://cran.rstudio.com/')"

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]