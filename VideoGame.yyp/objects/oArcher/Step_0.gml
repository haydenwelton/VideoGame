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
	
if (instance_exists(oPlayer))
{
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600)
	{
		sprite_index = ArcherShot;
		image_xscale = sign( x - oPlayer.x )*-1;
	}
	else 
	{
		sprite_index = ArcherIdle;
	}
}


flash = flash - 0.5

//if (grounded) && (place_meeting(x+40,y,oWall)) || (place_meeting(x-40,y,oWall))
//{
	//vsp = -7.05;
//}









