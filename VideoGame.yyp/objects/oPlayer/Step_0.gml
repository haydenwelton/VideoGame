
//Get Player Input
if (global.ridinghorse = false)
{
	grv = 0.3;
	
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
		key_sprint = 0;
	}


	//Calculate Movement
	var move = key_right - key_left;

	hsp = (move * walksp) + gunkickx;
	gunkickx = 0;

	vsp = (vsp + grv) + gunkicky;
	gunkicky = 0;

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

	if attacking = true
	{
		sprite_index = Melee;
		hascontrol = false;
	}

	else{

if (!place_meeting(x,y+1,oWall))
{
	if (global.hasgun = true) && (hsp < 6 || hsp > -6)
	{
	image_speed = 1;
	if (sign(vsp) > 0) sprite_index = Jump; else sprite_index = Jump1;}
	
	if (global.hasgun = false) && (hsp < 6 || hsp > -6)
	{
		
		image_speed = 1;
		if (sign(vsp) > 0) sprite_index = FallArms; else sprite_index = JumpArms;}
		
	
	if (global.hasgun = true) && (sprinting) && (hsp > 6 || hsp < -6)
	{
	image_speed = 1;
	if (sign(vsp) > 0) sprite_index = sJump; else sprite_index = sJump;}
	
	
	if (global.hasgun = false) && (sprinting) && (hsp > 6 || hsp < -6)
	{
	image_speed = 1;
	if (sign(vsp) > 0) sprite_index = sJumpArms; else sprite_index = sJumpArms;}
		
	

	
}
else
{
	
	canjump = 10;
	if(sprite_index == Jump)
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
	
	if(sprite_index == FallArms)
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
	if (hsp == 0) && (global.hasgun = true)
	{
		sprite_index = Idle1;	
	}
else{
		sprite_index = IdleArms;


// Run Animation

	if (hsp != 0) && (global.hasgun = true) && (!key_sprint)
	{
		sprite_index = Run;
		sprinting = false;
		walksp = 6;
	}
else
	{
		if (hsp != 0) && (!key_sprint)
		{
			sprinting = false;
		sprite_index = RunArms;
		walksp = 6;
		}
	}

}

//Sprint Animation


	if (hsp != 0) && (key_sprint) && (global.hasgun = false)
	{
		sprinting = true;
	sprite_index = SprintArms;
	walksp = 8;
	}
	
	if (hsp != 0) && (key_sprint) && (global.hasgun = true)
	{
		sprinting = true;
	sprite_index = Sprint;
	walksp = 8;
	}
		
	

}

// Crouch Animation

if key_crouch && (place_meeting(x,y+1,oWall)) && instance_exists(oGun) {
	
	sprite_index = Crouch;
	image_speed = 1;
	with (oGun)
	{
	 y = oPlayer.y+10;
	}
}

if key_crouch && (place_meeting(x,y+1,oWall)) && hsp != 0 && instance_exists(oGun)
{
	
	sprite_index = CrouchWalk;
	
		with (oGun)
	{
	 y = oPlayer.y+10;
	}
	
	walksp = 3;
}


hptimer--;

// Without Gun


if (hsp != 0) && (global.hasgun = false){
	image_xscale = sign(hsp);
}


if key_crouch && (place_meeting(x,y+1,oWall)) && (global.hasgun = false) 
{
	sprite_index = CrouchArms;
	image_speed = 1;
	with (oGun)
	{
	 y = oPlayer.y+10;
	}
}

if key_crouch && (place_meeting(x,y+1,oWall)) && hsp != 0 && (global.hasgun = false)
{
	
	sprite_index = CrouchWalkArms;
	
		with (oGun)
	{
	 y = oPlayer.y+10;
	}
	
	walksp = 3;
}



}
//Melee Attack
if (mouse_check_button(mb_right)) && (place_meeting(x,y+1,oWall))
{
	attacking = true;
}


if attacking = false
	{
		hascontrol = true;
	}
	
if (image_index >= 15) && (image_index < 16) && attacking = true
	{
		with (instance_create_layer(x,y,"Gun",obj_hitbox))
		{
		image_xscale = other.image_xscale
		}
		ScreenShake(5,20);
		audio_play_sound(Sword,1,false);
	}
		
}	

//Horse

	if (global.ridinghorse = true) && (global.hasgun = false)
	{
		grv = 0;
		hascontrol = false;
		
	
		
			with (oHorse)
			{
				
				if (vsp = 0) && (place_meeting(x,y+1,oWall))
				{
					other.sprite_index = MountedArms;
					other.image_speed = 1;
				}
					else		
					{
					other.image_speed = 0;
					other.sprite_index = MountedJumpingArms;
					if (sign(vsp) > 0) other.image_index = 1; else other.image_index = 0;
					}
				
				hascontrol = true;
				
			 other.image_xscale = image_xscale;	
				other.x = x;
				other.y = y; 	
				
			}
			
			
	}
	
	
	
	
	
if (global.ridinghorse = true) && (global.hasgun = true)
	{
		grv = 0;
		hascontrol = false;
		
			with (oHorse)
			{
				
				if (vsp = 0) && (place_meeting(x,y+1,oWall))
				{
					other.sprite_index = Mounted;
					other.image_speed = 1;
				}
					else		
					{
					other.image_speed = 0;
					other.sprite_index = MountedJumping;
					if (sign(vsp) > 0) other.image_index = 1; else other.image_index = 0;
					}
				
				hascontrol = true;
					other.x = x;
				other.y = y; 			
			}
				with (oGun)
				{
				y = other.y -17;
				}
	}	
	
	
	
if (global.ridinghorse = true)
{
	if (keyboard_check_pressed(vk_shift)) || (!instance_exists(oHorse))
	{
		
	global.ridinghorse = false;
	grv = 0.3;
	hascontrol = true;
	vsp = -10;
		with (oHorse) hascontrol = false;
	}
}

