/// @desc <>
var _inst = object_index

_inst.energy -= other.armor;
other.armor -= _inst.damage;

_inst.damage = _inst.energy;

audio_play_sound(aud_hit, 2, false);