if (instance_exists(oPlayer))
{
	if (sprite_index = ArcherShot)
		{
			countdown--;
			if (countdown <= 0)
			{
				
		
				countdown = countdownrate;
			if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600) && (point_distance(oPlayer.x,oPlayer.y,x,y) > 400)
			{
				with (instance_create_layer(x,y,"Bullets",oArrow))
				{
					
					spd = 20;
					direction = point_direction(x,y,oPlayer.x,oPlayer.y - random_range(140,230));
					image_angle = direction;
				}
			 }
			 
			 if (point_distance(oPlayer.x,oPlayer.y,x,y) < 400) && (point_distance(oPlayer.x,oPlayer.y,x,y) > 300)
			{
				with (instance_create_layer(x,y,"Bullets",oArrow))
				{
	
					spd = 10;
					direction = point_direction(x,y,oPlayer.x,oPlayer.y - random_range(60,160));
					image_angle = direction;
				}
			 }
			 
			 if (point_distance(oPlayer.x,oPlayer.y,x,y) < 300)
			{
				with (instance_create_layer(x,y,"Bullets",oArrow))
				{
	
					spd = 10;
					direction = point_direction(x,y,oPlayer.x,oPlayer.y - random_range(50,60));
					image_angle = direction;
				}
			 }
			 
		
		}
		}
}
