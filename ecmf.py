#!/usr/bin/python


from Magics.macro import *
#setting the output
output = output(
	output_formats = ['png'],
	output_name = "snowFall",
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
