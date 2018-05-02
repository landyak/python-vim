#!/usr/bin/python

from Magics.macro import *
from eccodes import *
import os 

PATH_OF_GRIB = '/home/ecmwf/ecmwf/data/'
PATH_OF_TMP = '/home/ecmwf/ecmwf/tmp/'
PATH_OF_LOG = '/home/ecmwf/ecmwf/log/'
PATH_OF_MESSAGE_FILE = '/home/ecmwf/message/'
PATH_OF_IMAGE = '/home/ecmwf/ecmwf/img/'

def splitGribFileToMessage(grib_in):
	os.system('cd '+ PATH_OF_TMP + ' && grib_copy -w shortName=u/v ' + grib_in + " [date][time]_uv_[level].grib[edition]") 
	os.system('cd '+ PATH_OF_TMP + ' && grib_copy -w shortName!=u/v ' + grib_in + " [date][time]_[shortName]_[level].grib[edition]")
	return 

def murgeUVtoWind(u,v):
	return os.system('grib_copy u v wind')


# gribfile=PATH_OF_GRIB+'W_NAFP_C_ECMF_20180406190036_P_C1D04061200041612001'
gribfile=PATH_OF_GRIB+'W_NAFP_C_ECMF_20180425055226_P_C1D04250000042503001'

splitGribFileToMessage(gribfile)

for file in os.popen('ls tmp').readlines():
	if file.find('uv') >= 0: continue 
	outfile=PATH_OF_IMAGE + file.strip()
	out = output(
			output_formats = ['png'],
			output_name = outfile,
			output_name_first_page_number = "off",
	)
	#settings of the geographical area
	area = mmap(subpage_map_projection="cylindrical",
	subpage_lower_left_longitude=90.,
	subpage_lower_left_latitude=30.,
	subpage_upper_right_longitude=130.,
	subpage_upper_right_latitude=55.,
	page_id_line = 'off',
	map_grid_latitude_increment = 2.00,
	map_grid_longitude_increment = 2.00,
	)

	#settings of the caostlines
	coast = mcoast(
	map_coastline_land_shade = "on",
	map_cities = "on",
	map_administrative_boundaries_countries_list = ["CHN"],
	map_administrative_boundaries_colour = "orange",
	map_rivers = "on",
	map_administrative_boundaries = "on",
	map_coastline_land_shade_colour = "cream",
	map_grid_line_style = "dash",
	map_grid_colour = "grey",
	map_label = "on",
	map_coastline_colour = "grey"
	)
	title = mtext(
			text_lines = ["Parameter : <grib_info key='name'/> valid for  <grib_info key='valid-date'/>'\n'Level : <grib_info key='level'/>"],
			)    
	if (file.find('cc') >=0 or file.find('ciwc') >=0 or file.find('clwc')) >=0:
		mcontour_shade_min_level = 0.01
	else:
		mcontour_shade_min_level = 0.0
	grib = mgrib( grib_input_file_name = str(PATH_OF_TMP+file.strip()))
	cont = mcont(mcontcontour_automatic_setting = "ecchart", contour_shade = "on",contour_shade_method = "area_fill", legend = "on", contour_shade_min_level = mcontour_shade_min_level)
	legend = mlegend(legend_display_type = "continuous")
	print(file)
	plot(out,area,coast,grib,cont,legend,title)
