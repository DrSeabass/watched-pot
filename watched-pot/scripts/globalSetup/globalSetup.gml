enum boilstate {
	still = 0,
	simmer = 1,
	slow_boil = 2,
	rolling_boil = 3
}

global.ACTION_PENALTY = 100
global.SIMMER_THRESHOLD = 500
global.SLOW_BOIL_THRESHOLD = 2000
global.ROLLING_BOIL_THRESHOLD = 5000

global.SIMMER_POINTS = 1
global.SLOW_BOIL_POINTS = 3
global.ROLLING_BOIL_POINTS = 5