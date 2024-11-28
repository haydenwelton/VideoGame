//Machine Gun





if (fullauto = true)
{
	
	sprite_index = Gun;
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

	if canshoot = true
	{
		if (mouse_check_button(mb_left)) && (firingdelay < 0)
		{
			audio_play_sound(sFullAuto,5,false);
			recoil = 4;
			firingdelay = 8;
			ScreenShake(2,10);


	if (global.ridinghorse = true)
	{
			with (instance_create_layer(x,y-17,"Bullets",Bullet))
			{
		
				spd = 25;
				direction = other.image_angle + random_range (-3,3);
				image_angle = direction;
			}
	}	
	
	
	if (global.ridinghorse = false)
	{
			with (instance_create_layer(x,y,"Bullets",Bullet))
			{
		
				spd = 25;
				direction = other.image_angle + random_range (-3,3);
				image_angle = direction;
			}
	}	
			
			
			with (oPlayer)
			{
				gunkickx = lengthdir_x(3, other.image_angle-180);
				gunkicky = lengthdir_y(1, other.image_angle-180);
			}
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
			if (attacking = false)
			{
			image_xscale = -1;
			}
		}
		
	}
	else
	{
		image_yscale = 1;
		with (oPlayer)
		{
			if (attacking = false)
			{
			image_xscale = 1;
			}
		}
	}


	with (oPlayer)
	{
	
		if (attacking = true)
		{
			canshoot = false;
			other.visible = false;
		}
		if (attacking = false)
		{
			canshoot = true;
			other.visible =  true;
		}
		
	}

}

//Pistol

if (pistol = true)
{
		if (image_angle > 90) && (image_angle < 270)
	{
	x = oPlayer.x+6;
	}
	else{
		x = oPlayer.x-10;
	}
	y = oPlayer.y;
	
	sprite_index = PGun;
	

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	firingdelay = firingdelay - 1;
	recoil = max(0,recoil - 1);

	if canshoot = true
	{
		if (mouse_check_button_pressed(mb_left)) && (firingdelay < 0)
		{
			audio_play_sound(GunShot,5,false);
			audio_play_sound(sPistol,5,false);
			recoil = 8;
			firingdelay = 10;
			ScreenShake(2,10);

			if (global.ridinghorse = true)
			{
					with (instance_create_layer(x,y - 17,"Bullets",Bullet))
				{
				
					with (Bullet)
				{
					size = 2;
				}
					spd = 25;
					direction = other.image_angle + random_range (-3,3);
					image_angle = direction;
				}
			}
			
											if (global.ridinghorse = false)
								{
										with (instance_create_layer(x,y,"Bullets",Bullet))
									{
				
										with (Bullet)
									{
										size = 2;
									}
										spd = 25;
										direction = other.image_angle + random_range (-3,3);
										image_angle = direction;
									}
								}
	
			with (oPlayer)
			{
				gunkickx = lengthdir_x(1.5, other.image_angle-180);
				gunkicky = lengthdir_y(1, other.image_angle-180);
			}
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
			if (attacking = false)
			{
			image_xscale = -1;
			}
		}
		
	}
	else
	{
		image_yscale = 1;
		with (oPlayer)
		{
			if (attacking = false)
			{
			image_xscale = 1;
			}
		}
	}


	with (oPlayer)
	{
	
		if (attacking = true)
		{
			canshoot = false;
			other.visible = false;
		}
		if (attacking = false)
		{
			canshoot = true;
			other.visible =  true;
		}
	}
}



if (shotgun = true) 
{
	
	
	sprite_index = SGun;
	if (image_angle > 90) && (image_angle < 270)
	{
	x = oPlayer.x+10;
	}
	else{
		x = oPlayer.x-10;
	}


	y = oPlayer.y;

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	firingdelay = firingdelay - 1;
	recoil = max(0,recoil - 1);

	if canshoot = true
	{
		if (mouse_check_button_pressed(mb_left)) && (firingdelay < 0)
		{
			audio_play_sound(sShotgun,5,false);
			
			recoil = 8;
			firingdelay = 30;
			ScreenShake(6,20);
			repeat(6)
			{
				
			if (global.ridinghorse = true)	
			with (instance_create_layer(x,y-17,"Bullets",Bullet))
			{
				spd = 25;
				direction = other.image_angle + random_range (-12,12);
				image_angle = direction;
			}
			
			if (global.ridinghorse = false)	
			with (instance_create_layer(x,y,"Bullets",Bullet))
			{
				spd = 25;
				direction = other.image_angle + random_range (-12,12);
				image_angle = direction;
			}
			
			
			}
			
			
			
			with (oPlayer)
			{
				gunkickx = lengthdir_x(20, other.image_angle-180);
				gunkicky = lengthdir_y(4, other.image_angle-180);
			}
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
			if (attacking = false)
			{
			image_xscale = -1;
			}
		}
		
	}
	else
	{
		image_yscale = 1;
		with (oPlayer)
		{
			if (attacking = false)
			{
			image_xscale = 1;
			}
		}
	}


	with (oPlayer)
	{
	
		if (attacking = true)
		{
			canshoot = false;
			other.visible = false;
		}
		if (attacking = false)
		{
			canshoot = true;
			other.visible =  true;
		}
	}

}


if (rifle = true)
{
	
	sprite_index = RGun;
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

	if canshoot = true
	{
		if (mouse_check_button_pressed(mb_left)) && (firingdelay < 0)
		{
			audio_play_sound(GunShot,5,false);
			audio_play_sound(sRifle,5,false);
			recoil = 8;
			firingdelay = 80;
			ScreenShake(2,10);

if (global.ridinghorse = true)
{
			with (instance_create_layer(x,y-17,"Bullets",Bullet))
			{
			
				spd = 60;
				direction = other.image_angle + random_range (-1,1);
				image_angle = direction;
			}
}

if (global.ridinghorse = false)
{
			with (instance_create_layer(x,y,"Bullets",Bullet))
			{
			
				spd = 60;
				direction = other.image_angle + random_range (-1,1);
				image_angle = direction;
			}
}

			with (oPlayer)
			{
				gunkickx = lengthdir_x(4, other.image_angle-180);
				gunkicky = lengthdir_y(1, other.image_angle-180);
			}
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
			if (attacking = false)
			{
			image_xscale = -1;
			}
		}
		
	}
	else
	{
		image_yscale = 1;
		with (oPlayer)
		{
			if (attacking = false)
			{
			image_xscale = 1;
			}
		}
	}


	with (oPlayer)
	{
	
		if (attacking = true)
		{
			canshoot = false;
			other.visible = false;
		}
		if (attacking = false)
		{
			canshoot = true;
			other.visible =  true;
		}
	}
}






if visible = false

	{
		canshoot = false;
	}
	
if visible = true

	{
		canshoot = true;
	}