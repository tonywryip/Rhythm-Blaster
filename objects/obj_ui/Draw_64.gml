/// @desc <>
if (room == r_space) {
	#region Draw the player ship armor
	var _player_ship = instance_find(obj_ship, 0);
	var _armor_amount = 0;

	if (_player_ship != noone) {
		_armor_amount = _player_ship.armor div 3;
	}

	var _armor_x = 8;
	var _armor_y = 8;

	draw_sprite(spr_armor, _armor_amount, _armor_x, _armor_y);
	#endregion

	#region Draw the player score

	draw_set_halign(fa_right);
	var _score_width = sprite_get_width(spr_score);
	var _score_x = room_width - 8 - _score_width;
	var _score_y = 8;

	draw_sprite(spr_score, 0, _score_x, _score_y);
	draw_text(_score_x + _score_width - 4, _score_y +1, score);
	draw_set_halign(fa_left);

	#endregion
	
	#region Draw beat button
	var _beat_x = room_width / 2;
	var _beat_y = room_height - 16;
	
	draw_sprite(spr_beat, button_light, _beat_x, _beat_y);
	#endregion
} else {
	#region Draw the highscore
	var _score_x = room_width - 8;
	var _score_y = 8;
	
	draw_set_halign(fa_right);
	draw_text(_score_x - 3, _score_y + 1, "Highscore: " + string(global.highscore));
	draw_set_halign(fa_left);
	#endregion
}