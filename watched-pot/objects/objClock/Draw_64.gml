/// @description draw boil time clock
var minutes = self.time_sum_seconds div 60
var hours = minutes div 60
var days = hours div 24

var display_hours = hours mod 24
var display_minutes = minutes mod 60
var display_seconds = self.time_sum_seconds mod 60

var display_string = "Time Boiling: "
display_string += string_format(days, 2, 0) + ":"
display_string += string_format(display_hours, 2, 0) + ":"
display_string += string_format(display_minutes, 2, 0) + ":"
display_string += string_format(display_seconds, 2, 0)

draw_text(x, y, display_string)