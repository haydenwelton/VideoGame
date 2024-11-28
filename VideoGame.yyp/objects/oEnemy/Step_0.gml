vsp = vsp + grv;

//Don't walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))
{
	//hsp = -hsp;
}


//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x = x + hsp;

//Vertical Collision

if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
	sprite_index = eFall;
	image_speed = 1;
	if (sign(vsp) > 0) sprite_index = eFall; else sprite_index = eFall;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = eIdle;	
	}
	else
	{
		sprite_index = eRun;
	}
}



image_xscale = sign(hsp) * size;
image_yscale = size;

flash = flash - 0.5


//if (grounded) && (place_meeting(x+40,y,oWall)) || (place_meeting(x-40,y,oWall))
//{
	//vsp = -7.05;
//}






