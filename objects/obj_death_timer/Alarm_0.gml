/// @desc <>

if (score > global.highscore) {
	global.highscore = score;
	ini_open("Save.ini");
	ini_write_real("Scores", "Highscore", global.highscore);
	ini_close();
}

score = 0;
room_goto(r_menu);