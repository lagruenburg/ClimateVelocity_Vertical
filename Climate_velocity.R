#Purpose: Vertical Climate Velocity in the NYB using ROMS data
#Data: DOPPIO reanalysis for MidAtlantic Bight and Gulf of Maine (https://tds.marine.rutgers.edu/thredds/roms/espresso/catalog.html)
# Last edited by L. Gruenburg July 9, 2021
library(ncdf4)

#######Load the datasets
ROMS_filepath = ('/Users/nyelab/Desktop/ClimateVelocity_Vertical/roms_converted.nc')
ROMS_output <- nc_open(ROMS_filepath)

lon <- ncvar_get(ROMS_output, varid = "lon_rho")
lat <- ncvar_get(ROMS_output, varid = "lat_rho")
temp <- ncvar_get(ROMS_output, varid = 'temp')
depth <- ncvar_get(ROMS_output, varid = "z_rho")
time <-ncvar_get(ROMS_output,varid = 'new_time')