/// @desc <>

if (room == r_space) {
	if (not audio_is_playing(aud_beepbox)) {
	audio_play_sound(aud_beepbox, 5, true);
	alarm[0] = 30;
	}
	global.beat = alarm_get(0);
} else { audio_stop_sound(aud_beepbox)};