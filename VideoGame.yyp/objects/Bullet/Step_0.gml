x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting(x,y,oWall))
{
	while (place_meeting(x,y,oWall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0;
	instance_change(oHitSpark,true);
}

if (place_meeting(x,y,pShootable))
{
	with (instance_place(x,y,pShootable))
	{
//Gun Damage
		with (oGun)
		{
		if shotgun = true
			{
			other.hp--;
			}
		if fullauto = true
			{
			other.hp = other.hp - 0.75;
			}
		if pistol = true
			{
			other.hp--;
			}
		
		if rifle = true
			{
			other.hp = other.hp - 5;
			}
		}
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}


