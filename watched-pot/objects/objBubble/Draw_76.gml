/// @description Set animation frame based on boil state
switch (self.current_state){
	case boilstate.still:
	self.image_index = 0
	break
	
	case boilstate.simmer:
	if self.image_index > 4 {
		self.image_index = 0
		self.destroy = true
	}
	break
	
	case boilstate.slow_boil:
	if self.image_index > 7 {
		self.image_index = 0
		self.destroy = true
	}
	break
	
	case boilstate.rolling_boil:
	default:
	if self.image_index == (self.image_number - 1){
		self.destroy = true
	}
	break
}