if (hptimer <= 0)
{
	hp--;
	hptimer = 60;
}

if (hp<=0)
{
horsedead = true;

	with (oPlayer) vsp = 7;

instance_change(hDead, true);

direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;
if (sign(hsp) != 0) image_xscale = sign(hsp);
}