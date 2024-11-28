


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




sin_value += (pi * 4) / steps_per_cycle;

if (sin_value >= pi * 4) sin_value = 0;

y = sin(sin_value)*120 + ystart;


if (x >= xstart + 500) || (x <= xstart - 500)
{
	hsp = -hsp
}


image_xscale = sign(hsp) * size * -1;
image_yscale = size;


flash = flash - 0.5







