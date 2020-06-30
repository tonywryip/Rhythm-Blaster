/// @desc <scale image and destroy inst>
if (energy >= 27){
	energy = 27
} else {
	var _inst = object_index;
	var _scale = energy / 27;
	_inst.image_xscale = _scale;
	_inst.image_yscale = _scale;
}

if (energy <= 0) {
	instance_destroy(_inst);
}