library('maps')
library('rgdal')
dsn.tx <- "VG250_LAN.shp"
shp <- readOGR(dsn=dsn.tx, stringsAsFactor = F)
proj4string(shp)
shp_ll = spTransform(shp, "+init=epsg:4326")
dat <- map(shp_ll)
#map.axes(cex.axis=0.8)
str(dat)
write.table(data.frame(x = dat$x, y = dat$y), "germany-shp.csv")

################################################################
# awk -f cvs2tex.awk germany-shp.csv > outlines.dat
################################################################

