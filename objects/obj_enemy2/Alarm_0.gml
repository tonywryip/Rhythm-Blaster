/// @desc <>
var _player_ship = instance_find(obj_ship, 0);

if (_player_ship == noone) exit;

alarm[0] = fire_rate;

if (not point_in_rectangle(x, y, 0, 0, room_width, room_height)) exit;

var _distance = point_distance(x, y, _player_ship.x, _player_ship.y);
var _direction = point_direction(x, y, _player_ship.x, _player_ship.y);

if _distance <= atk_range {
	var _laser = instance_create_layer(x, y, "Instances", obj_enemy_laser);
	_laser.direction = _direction;
	_laser.speed = 2;
	_laser.image_angle = _direction;
}

