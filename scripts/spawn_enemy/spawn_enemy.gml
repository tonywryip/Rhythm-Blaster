///@arg amount

var _amount = argument0;

var _player_ship = instance_find(obj_ship, 0)

if _player_ship == noone { exit };

var _spawn_range_x
var _spawn_range_y

repeat (_amount * 4) {
		_spawn_range_x = choose(random_range(-200, _player_ship.x - 500), 
						 random_range(_player_ship.x + 500, room_width + 200))
		_spawn_range_y = choose(random_range(800, _player_ship.y - 200), 
						 random_range(_player_ship.y + 300, room_height+500))
		instance_create_layer(_spawn_range_x, _spawn_range_y, "Instances", obj_enemy1);
	}
	
	// Enemy 2 creation
	repeat (_amount * 2) {
		_spawn_range_x = choose(random_range(-200, _player_ship.x - 500), 
						 random_range(_player_ship.x + 500, room_width + 200))
		_spawn_range_y = choose(random_range(800, _player_ship.y - 200), 
						 random_range(_player_ship.y + 300, room_height+500))
		instance_create_layer(_spawn_range_x, _spawn_range_y, "Instances", obj_enemy2);
	}