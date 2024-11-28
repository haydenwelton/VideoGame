if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,tDead))
	{
		if random(10) >= 9
	{
	instance_create_layer(x,y,"Gun",MGunPickup)
	}
	
		if random(10) >= 9
	{
	instance_create_layer(x,y,"Gun",PistolPickup)
	}
	
		if random(15) >= 14
	{
	instance_create_layer(x,y,"Gun",ShotgunPickup)
	}
	
		if random(20) >= 19
	{
	instance_create_layer(x,y,"Gun",RiflePickup)
	}
	
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		image_xscale = sign(hsp);
		if (sign(hsp)  != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	
	
	instance_destroy();
}