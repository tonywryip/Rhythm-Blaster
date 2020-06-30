/// @desc <>
var _enemy_number = instance_number(obj_enemy_ship_parent)

if _enemy_number == 0 {
	spawn_enemy(wave);
	wave += 1;
}