install.packages("terra")
install.packages("geodata")

library(terra)
library(geodata)

clim <- worldclim_global(var = "bio", res = 10, path = tempdir())
bio1 <- clim[[1]]
south_america <- ext(-90, -30, -60, 15)
bio1_crop <- crop(bio1, south_america)
plot(bio1_crop, main = "BIO1 - Température moyenne annuelle (Amérique du Sud)")

png("bio1_south_america.png")
plot(bio1_crop)
dev.off()
summary(bio1_crop)
