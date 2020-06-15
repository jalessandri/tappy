#!/bin/sh

# Read from the file
python3 -m tappy.tappy --filter usgs mayport_florida_8720220_data.txt mayport_florida_8720220_data_def.txt

# Read from COOPS web site data for 872-0218 Mayport Bar Pilots Dock
python3 -m tappy.tappy 'http://tidesandcurrents.noaa.gov/data_menu.shtml?bdate=20020101&edate=20020401&wl_sensor_hist=W2&relative=&datum=6&unit=0&shift=g&stn=8720218&type=Historic+Tide+Data&format=View+Data' tidesandcurrents.def

# Read from compressed file.  Use default 'sparse.def' parsing definition file.
python3 -m tappy.tappy tridentpier_florida_8721604_data.txt.gz

# Output
python3 -m tappy.tappy --outputts mayport_florida_8720220_data.txt mayport_florida_8720220_data_def.txt

# Test defining date as a single value.  Look at 
# tridentpier_florida_8721604_datetime.txt.def for an explanation of what 
# is going on.
python3 -m tappy.tappy tridentpier_florida_8721604_datetime.txt.gz
