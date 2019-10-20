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
	}else{
		if self.SIMMER_CHANCE > random(1.0){
			addBubble(self)
		}
	}
} else if self.count > global.SLOW_BOIL_THRESHOLD and self.count < global.ROLLING_BOIL_THRESHOLD {
	self.previous_state = self.current_state
	self.current_state = boilstate.slow_boil
	if self.previous_state != self.current_state {
		show_debug_message("Starting slow boil")
	}else{
		if self.SLOW_CHANCE > random(1.0){
			addBubble(self)
		}
	}
} else if self.count > global.ROLLING_BOIL_THRESHOLD {
	self.previous_state = self.current_state
	self.current_state = boilstate.rolling_boil
	if self.previous_state != self.current_state {
		show_debug_message("Starting rolling boil")
	}else{
		if self.ROLL_CHANCE > random(1.0){
			addBubble(self)
		}
	}
} else {
	self.current_state = boilstate.still
}

if self.previous_state != self.current_state {
	show_debug_message("Updating state to " + string(self.current_state))
	for(var i = 0; i < array_length_1d(self.bubble_array); i++){
		if self.bubble_array[i] != noone {
			var bubble = self.bubble_array[i]
			bubble.current_state = self.current_state
		}
	}
}