if (point_in_circle(oPlayer.x,oPlayer.y,x,y,128)) && (!instance_exists(oText)) && (instance_exists(oPlayer)) 
{
	with (instance_create_layer(x,y-200,layer,oText))
	{
		text = other.text;
		length = string_length(text);
	}
	
	with (Camera)
	{
		follow = other.id;
	}
}