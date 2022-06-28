#Purpose: Vertical Climate Velocity in the NYB using ROMS data
#Data: DOPPIO reanalysis for MidAtlantic Bight and Gulf of Maine (https://tds.marine.rutgers.edu/thredds/roms/espresso/catalog.html)
# Last edited by L. Gruenburg July 21, 2021
library(ncdf4)
library(VoCC)
library(raster)
citation("VoCC")

#######Load the datasets
#ROMS_filepath = ('/Users/nyelab/Desktop/ClimateVelocity_Vertical/roms_converted_temp10m.nc')
ncpath <- "/Users/nyelab/Desktop/ClimateVelocity_Vertical/"
ncname <- "roms_slice"  
ncfname <- paste(ncpath, ncname, ".nc", sep="")#, stopIfNotEqualSpaced = F)
dname <- "temp"
tmp_raster <- brick(ncfname, varname="temp")

#ROMS_output <- nc_open(ROMS_filepath)

lon <- ncvar_get(ROMS_output, varid = "lon_rho")
lat <- ncvar_get(ROMS_output, varid = "lat_rho")
temp <- ncvar_get(ROMS_output, varid = 'temp_10m')
depth <- ncvar_get(ROMS_output, varid = "depth")
time <-ncvar_get(ROMS_output,varid = 'ocean_time')

