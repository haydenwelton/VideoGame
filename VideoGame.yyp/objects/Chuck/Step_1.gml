if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,oDead))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		image_xscale = sign(hsp);
		if (sign(hsp)  != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
		audio_play_sound(Death,0,0);
	}
	
	
	instance_destroy();
}