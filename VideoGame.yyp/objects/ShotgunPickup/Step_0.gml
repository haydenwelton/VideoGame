y = ystart + sin(get_timer()/500000)*5;

if (instance_exists(oPlayer))
{

	if (point_in_circle(oPlayer.x,oPlayer.y,x,y,50)) && keyboard_check_pressed(ord("F"))
	{
		if (global.hasgun = false) instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oGun);
		with (oGun)
		{
			shotgun = true;
			
			if (fullauto = true)
			{
			instance_create_layer(oPlayer.x,oPlayer.y,"Gun",MGunPickup);
			
			fullauto = false;
			}
			
			if (pistol = true)
			{
			instance_create_layer(oPlayer.x,oPlayer.y,"Gun",PistolPickup);
			
			pistol = false;
			}
			
			if (rifle = true)
			{
			instance_create_layer(oPlayer.x,oPlayer.y,"Gun",RiflePickup);
			rifle = false;
			}
		
		}
		audio_play_sound(GunPickup,1,false);
	instance_destroy();
		}
	

}