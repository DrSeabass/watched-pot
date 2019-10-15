/// @description Update count on pot, 0 if watched, incr otherwise

watched = false

if (watched) {
	self.count = 0
}else{
	self.count ++
}

if self.count > global.SIMMER_THRESHOLD and self.count < global.SLOW_BOIL_THRESHOLD {
	self.previous_state = self.current_state
	self.current_state = boilstate.simmer
	if self.previous_state != self.current_state {
		show_debug_message("Starting simmer")
	}
} else if self.count > global.SLOW_BOIL_THRESHOLD and self.count < global.ROLLING_BOIL_THRESHOLD {
	self.previous_state = self.current_state
	self.current_state = boilstate.slow_boil
	if self.previous_state != self.current_state {
		show_debug_message("Starting slow boil")
	}
} else if self.count > global.ROLLING_BOIL_THRESHOLD {
	self.previous_state = self.current_state
	self.current_state = boilstate.rolling_boil
	if self.previous_state != self.current_state {
		show_debug_message("Starting rolling boil")
	}
}