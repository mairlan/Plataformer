/// @description Insert description here
// You can write your code in this editor

//chacando se esta no chao
var _chao = place_meeting(x, y+1, obj_ground);

if(_chao){
	//timer para andar
	time_walk -= 1;
	
	// acabou o tempo, entao decide o numero denovo
	if(time_walk <= 0){
		walking = choose(true, false);
		
		show_debug_message(walking);
		
		// escolhendo a direção
		if(walking)
		{
			hspd = choose(spd, -spd);
		}else
		{
			hspd = 0;
		}
		// resetando o tempo
		time_walk = room_speed * 2;
	}
	

	
	
	//controlando a animação do inimigo
	if(hspd != 0){
		sprite_index = spr_enemy_walk;
		image_xscale = sign(hspd)
	}else{
		sprite_index = spr_enemy_idle;
	}
	// se bater na parede muda de direção
	if(place_meeting(x+hspd, y, obj_ground)){
		hspd *=-1
	}
	
	// se eu não posso cair eu mudo de direção
	if(pode_cair = false){
		if(place_meeting(x+(hspd*10), y+1, obj_ground) == false){
			// se eu não posso cair e não estou tocando no chão, na minha frente então eu mudo de direção
			hspd *= -1;
		}
	
	}
}else{ // se não estou no chão
	vspd += grv;
	hspd = 0;
	
	if(hspd != 0){
		image_xscale = sign(hspd);
	}
}


