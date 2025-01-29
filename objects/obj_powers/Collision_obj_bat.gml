if(image_index == 0)
{
	with(obj_bat)
	{
	image_xscale = 1.5;
	alarm[0] = 10*room_speed;
	}
}
if(image_index == 1)
{
	with(obj_ball){
		speed = spd;
	}
}
if(image_index == 2)
{
	global.player_lives += 1;
}
if(image_index == 3)
{
	instance_create_layer(xstart, ystart, "Instances", obj_ball_extra);
}
instance_destroy();