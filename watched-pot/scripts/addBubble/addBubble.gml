///@description adds a bubble to the pot
///@param pot to add bubble to
var pot = argument0

var next_index = -1

for(var i = 0; i < array_length_1d(pot.bubble_array); i++){
	if pot.bubble_array[i] == noone {
		next_index = i
		i = array_length_1d(pot.bubble_array)
	}
}

if next_index == -1 {
	show_debug_message("pot full; not adding bubbles")
	return
}

bubble_x = pot.x + pot.BUBBLE_X_MIN + random(pot.BUBBLE_X_MAX - pot.BUBBLE_X_MIN)
bubble_y = pot.y + pot.BUBBLE_Y_MIN + random(pot.BUBBLE_Y_MAX - pot.BUBBLE_Y_MIN)

bubble = instance_create_depth(bubble_x, bubble_y, objBubble, 0)
bubble.pot = pot
bubble.current_state = pot.current_state
bubble.index = next_index
pot.bubble_array[next_index] = bubble