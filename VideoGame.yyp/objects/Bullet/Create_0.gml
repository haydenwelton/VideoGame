
with (oGun)
{
	if (pistol = true)
	{
		other.image_xscale = 1.2;
		other.image_yscale = 1.2;
	}
	
	if (fullauto = true) || (rifle = true)
	{
		other.image_xscale = 1;
		other.image_yscale = 1;
	}
	
	if (shotgun = true)
	{
		
		other.image_xscale = 0.6;
		other.image_yscale = 0.6;
	}
	
		
}



