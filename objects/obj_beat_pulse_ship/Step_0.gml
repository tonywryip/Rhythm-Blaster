/// @desc <>
var _ship = instance_find(obj_ship, 0);

if (room == r_space) {
	image_index = - global.beat div 2;
	if (_ship != noone){
		x = _ship.x;
		y = _ship.y;
		image_xscale = global.on_beat / 12;
		image_yscale = global.on_beat / 12;
	} else exit;
}