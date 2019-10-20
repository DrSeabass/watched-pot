/// @description draw boil time clock
var minutes = self.time_sum_seconds div 60
var hours = minutes div 60
var days = hours div 24

var display_hours = hours mod 24
var display_minutes = minutes mod 60
var display_seconds = self.time_sum_seconds mod 60

var display_string = "Time Boiling: "

if days < 10 {
	display_string += "0" + string(days) + ":"
}else{
	display_string += string(days) + ":"
}

if display_hours < 10 {
	display_string += "0" + string(display_hours) + ":"
}else{
	display_string += string(display_hours) + ":"
}

if display_minutes < 10 {
	display_string += "0" + string(display_minutes) + ":"
}else{
	display_string += string(display_minutes) + ":"
}

if display_seconds < 10 {
	display_string += "0" + string(display_seconds)
}else{
	display_string += string(display_seconds)
}

draw_text(x, y, display_string)