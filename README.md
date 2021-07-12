# ClimateVelocity_Vertical

This repository contains the following:

Convert_depth_coord.ipynb 

1. Loads a NYB subset of ROMS data from DOPPIO (replacement for ESPRESSO) product for Mid-Atlantic Bight and Gulf of Maine.
https://tds.marine.rutgers.edu/thredds/roms/doppio/catalog.html?dataset=DopAnV2R3-ini2007_da_monthly_averages
2. Preforms a simple conversion (transformation-2) from sigma coords to depth coords - note varies in time to do the evolution of n (sea surface)
3. Saves roms output with converted coordinates into a new netcdf file.  (Too large to be deposited here)

Climate_Velocity.R 
1. Attempt to adapt horizontal climate variability (https://github.com/JorGarMol/VoCC) to the vertical for the NYB
