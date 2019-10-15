/// @description destroy bubble post-draw if appropriate

if self.destroy {
	self.pot.bubbles[self.index] = noone
	instance_destroy(self)
}