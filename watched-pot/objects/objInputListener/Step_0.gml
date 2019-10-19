if self.touched or self.previous_mouse_x != mouse_x or self.previous_mouse_y != mouse_y{
	show_debug_message("Saw some input")
}

self.touched = false
self.previous_mouse_x = mouse_x
self.previous_mouse_y = mouse_y