require("jsonlite")
require("RCurl")
require(tidyr)
require(dplyr)
require(ggplot2)

redwhite <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from RED_WHITE_WINE"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDBF15DV.usuniversi01134.oraclecloud.internal', USER='cs329e_kwl377', PASS='orcl_kwl377', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE), ))


redwhite %>% select (ALCOHOL, DENSITY, QUALITY, COLOR) %>% filter(DENSITY <= 1.01 & COLOR == "white") %>% tbl_df
