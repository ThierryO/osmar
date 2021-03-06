###setwd("D:/R_packages/osmar/branches/mjae/sandbox")
###  ist nur damit ich das nicht immer neu eintippen muss ;)

#source("source.R")
library("osmar")



box <- bbox(11.579341, 48.15102, 11.582852, 48.1530)
box

nd <- node(373395)


### Access per API:

api <- osmsource_api()
api

xml1 <- get_osm(box, source = api)
xml1

summary(xml1)


xml2 <- get_osm(nd, api)


kaufstr <- get_osm(way(3810479))
kaufstr

summary(kaufstr)


### Access per osmosis:

osmosis <- osmsource_osmosis(file = "muenchen.osm",
                             osmosis = "Z://Temp//osmar//osmosis-0.39//bin//osmosis.bat")
osmosis

xml2 <- get_osm(box, source = osmosis)

