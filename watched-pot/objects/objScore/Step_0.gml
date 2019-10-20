/// @description update score based on pot state

if self.pot != noone {
	// do the score updating
	switch(self.pot.current_state){
		case boilstate.simmer:
			self.ticks_simmered++
			break
		case boilstate.slow_boil:
			self.ticks_slow_boil++
			break
		case boilstate.rolling_boil:
			self.ticks_hard_boil++
			break
		default:
			break
	}
}

self.points = self.ticks_simmered * global.SIMMER_POINTS + self.ticks_slow_boil * global.SLOW_BOIL_POINTS + self.ticks_hard_boil * global.ROLLING_BOIL_POINTS
