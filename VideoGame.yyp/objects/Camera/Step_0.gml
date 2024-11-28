if (instance_exists(follow))
{
 xTo = follow.x;
 yTo = follow.y;
 
	if ((follow).object_index == PlayerDead)
	{
		x = xTo;
		y = yTo;
	}
 
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;




x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

x += random_range(-shake_remain,shake_remain);
x += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("Stars"))
{
	layer_x("Stars",x/2);
}

if (layer_exists("Windows"))
{
	layer_x("Windows",x/4);
}

if (layer_exists("Banners"))
{
	layer_x("Banners",x/6);
}

if (instance_exists(oGun))
{
	global.hasgun = true;
}

if global.hasgun = false
{
	with (oGun)
	{
	fullauto = false;
	shotgun = false;
	pistol = false;
	rifle = false;
	}
}

if (!instance_exists(oGun)) cursor_sprite = cr_none;
window_set_cursor(cr_none)
if (room = rMenu) cursor_sprite = CPistol;


	
with (oGun)
{
	
	if (shotgun = true)
	{
		image_speed = 0;
	cursor_sprite = CShotgun;
	if (mouse_check_button(mb_left)) image_index = 1;
	}
	
		

		if (pistol = true) 
		{
			image_speed = 0;
		cursor_sprite = CPistol;
		if (mouse_check_button(mb_left)) image_index = 1;
		}

	if (fullauto = true) 
	{
		image_speed = 0;
	cursor_sprite = CFullAuto;
	if (mouse_check_button(mb_left)) image_index = 1;
	}

		if (rifle = true) 
		{
			image_speed = 0;
		cursor_sprite = CRifle;
		if (mouse_check_button(mb_left)) image_index = 1;
		}

}
		
		
		
		