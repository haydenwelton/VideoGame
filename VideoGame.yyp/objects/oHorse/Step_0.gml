//Get Player Input
if (instance_exists(oPlayer)){
	
if (point_in_circle(oPlayer.x,oPlayer.y,x,y,50)) && keyboard_check_pressed(ord("F"))
	{
		
		with (oPlayer)
			{
				global.ridinghorse = true;		
			}
	}



if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space); 
	key_crouch = keyboard_check(ord("S"));
	key_sprint = keyboard_check(vk_shift);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	key_crouch = 0;
}


//Calculate Movement
var move = key_right - key_left;

hsp = (move * walksp);


vsp = (vsp + grv);


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


//Jumping
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -7;
}

if vsp = -7{
	if (place_meeting(x,y+vsp,oWall)){
		vsp = 0;
	}
}

y = y + vsp;

//Animation


if (hsp != 0)
	{
		image_xscale = sign(hsp);
	}

if (!place_meeting(x,y+1,oWall))
{
	image_speed = 1;
	if (sign(vsp) > 0) sprite_index = HorseFall; else sprite_index = HorseJump;
}

		

else
{
	
	canjump = 10;
}

	if(sprite_index == HorseFall) && (place_meeting(x,y,oWall))
	{ 
		audio_sound_pitch(Landing,random_range (0.5,1.5));
		audio_play_sound(Landing,4,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullets",oDust))
			{
				vsp = 0;
			}
			
		}
	}

	
// Idle Animation

	image_speed = 1;
	if (hsp == 0) && (vsp == 0) && (place_meeting(x,y+1,oWall))
	{
		with (oPlayer)
		{
			
			if (global.ridinghorse = true) other.sprite_index = HorseMounted;	
			if (global.ridinghorse = false) other.sprite_index = HorseIdle;
		}
	}

// Run Animation

	if (hsp != 0) && (vsp = 0)
	{
		image_xscale = sign(hsp);
		sprite_index = HorseRun;
		sprinting = false;
	}



		







hptimer--;

}



		
	

			
		