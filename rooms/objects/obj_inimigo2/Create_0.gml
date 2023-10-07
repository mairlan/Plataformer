/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

// mudando variaveis
spd = choose(1, -1);

walking = choose(true, false);
if (walking){
	if(walking)
	{
		hspd = choose(spd, -spd);
	}else
	{
		hspd = 0;
	}
}
time_walk = room_speed * 2;