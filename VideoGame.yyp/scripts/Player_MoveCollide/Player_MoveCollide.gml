function Player_MoveCollide() {

	//====Collide and Move
	if (place_meeting(x,y,par_wall))
	{
	    var inc = sign(hsp_final);
	    while (!place_meeting(x+inc,y,par_wall)) x+= inc;
	    hsp_final = 0;
	    hsp = 0;
	}
	x+=hsp;
 
	if (place_meeting(x,y+vsp_final,par_wall))
	{
	    var inc = sign(vsp_final);
	    while (!place_meeting(x,y+inc,par_wall)) y+= inc;
	    vsp_final = 0;
	    vsp = 0;
	}
	y+=vsp_final;



}
