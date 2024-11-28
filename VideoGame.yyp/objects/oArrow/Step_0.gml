if (verspd < 10) verspd += grv;
y += verspd;

if (place_meeting(x,y,oWall))
{
	instance_destroy();
}


