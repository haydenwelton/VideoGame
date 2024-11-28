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
	hsp = 0;
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
	
}
else
{
	grounded = true;
	image_speed = 1;
}


if (hsp == 0)
	{
		sprite_index = aIdle;	
	}
	else
	{
		sprite_index = Armor;
	}




image_xscale = size;
image_yscale = size;

if (hsp != 0)
{
image_xscale = sign(hsp) * size;
image_yscale = size;
}

flash = flash - 0.5


//if (grounded) && (place_meeting(x+40,y,oWall)) || (place_meeting(x-40,y,oWall))
//{
	//vsp = -7.05;
//}

if instance_exists(oPlayer)
{
switch (state)
{
	case e_state.idle:
	{
		image_xscale = (sign(oPlayer.x - x))* -1 * size;
		hsp = 0;
		vsp = (min(7,vsp+0.05));
		if (distance_to_object(oPlayer) < 300) state = e_state.chase;
	}
	break;
	case e_state.chase:
	{
		dir = sign(oPlayer.x - x);
		hsp = dir * 2;
		vsp = (min(7,vsp+0.05));
		if (distance_to_object(oPlayer) > 400) state = e_state.idle;
	}
	break;
	
}
}


