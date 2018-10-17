setwd("~/R/ultrasound")
library(rvest)
webpage <- read_html("https://children.costhelper.com/ultrasound-comments-1.html")
webpage
tbls <- html_nodes(webpage, 'table')
tbls
tbls_ls <- webpage %>%
  html_nodes("table") %>%
  .[10:129] %>%
  html_table(fill = TRUE)
tbls_ls

# git remote add origin https://github.com/marcelotournier/ultrasound.git
# git push -u origin master