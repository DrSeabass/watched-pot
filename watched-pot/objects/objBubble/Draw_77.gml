/// @description destroy bubble post-draw if appropriate

if self.destroy {
	self.pot.bubble_array[self.index] = noone
	//show_debug_message("destroying bubble " + string(self.index))
	instance_destroy(self)
}