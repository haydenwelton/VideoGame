if (image_angle > 90) && (image_angle < 270)
{
x = oPlayer.x+6;
}
else{
	x = oPlayer.x-10;
}


y = oPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	audio_play_sound(GunShot,5,false);
	recoil = 4;
	firingdelay = 10;
	ScreenShake(2,10);

	with (instance_create_layer(x,y,"Bullets",Bullet))
	{
		speed = 25;
		direction = other.image_angle + random_range (-3,3);
		image_angle = direction;
		
		
}
}
x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270) && instance_exists(oGun)
{
	image_xscale = 1;
	image_yscale = -1;
	recoil = max(0,recoil - 3);
	with (oPlayer)
	{
		image_xscale = -1;
	}
		
}
else
{
	image_yscale = 1;
	with (oPlayer)
	{
		image_xscale = 1;
	}
}