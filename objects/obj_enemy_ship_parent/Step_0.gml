/// @desc <>
move_towards_player();

if armor < 0 {
	armor = 0;
}

if (global.beat >= 28 or global.beat <= 2) {
	image_blend = c_ltgray;
} else {
	image_blend = -1;
}