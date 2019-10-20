/// @description Insert description here
// You can write your code in this editor
self.bubble_array = []


for(var i = 0; i < 50; i ++){
	self.bubble_array[i] = noone
}

self.input_listener = instance_create_depth(0,0,0, objInputListener)
self.input_listener.pot = self

self.score_keeper = instance_create_depth(530, 50, 0, objScore)
self.score_keeper.pot = self

self.timer = instance_create_depth(530, 150, 0, objClock)
self.timer.pot = self