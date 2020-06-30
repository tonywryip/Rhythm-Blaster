///@arg laser_object

var _laser_index = argument0;

var _distance = sprite_get_width(sprite_index) / 2;
var _angle = 60;

var _x = x + lengthdir_x(_distance, image_angle + _angle) + hspeed;
var _y = y + lengthdir_y(_distance, image_angle + _angle) + vspeed;

var _laser = instance_create_layer(_x, _y, "Instances", _laser_index);

_laser.direction = image_angle;
_laser.speed = 8;
_laser.image_angle = image_angle;