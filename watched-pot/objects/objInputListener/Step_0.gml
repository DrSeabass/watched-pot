if self.touched or self.previous_mouse_x != mouse_x or self.previous_mouse_y != mouse_y{
	if self.pot != noone {
		self.pot.count -= global.ACTION_PENALTY
	}
}

self.touched = false
self.previous_mouse_x = mouse_x
self.previous_mouse_y = mouse_y