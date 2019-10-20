/// @description update boiling time
if self.pot != noone {
	if self.pot.current_state != boilstate.rolling_boil {
		if self.boil_start > 0 {
			var boil_stop = get_timer()
			var boil_delta = boil_stop - self.boil_start
			self.time_sum_seconds += boil_delta / 1000000
			self.boil_start = -1
		}
	} else { // self.pot.current_state == boilstate.rolling_boil
		if self.boil_start < 0 {
			self.boil_start = get_timer()
		}else{
			var boil_stop = get_timer()
			var boil_delta = boil_stop - self.boil_start
			self.time_sum_seconds += boil_delta / 1000000
			self.boil_start = boil_stop
		}
	}
}