// controlando o Player
var _chao = place_meeting(x,y + 1, obj_ground);
var _left, _right, _jump;

_left = keyboard_check(inputs.left); 
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);
_dash = keyboard_check(inputs.dash);

hspd = (_right - _left) * spd;



//pulando
if(_chao){
	
	if (_jump){
		vspd = -vel_jump;
	}
	//se estou no chao e me movendo
	if(hspd != 0 ){
		sprite_index = spr_player_walk;
		//olha pra onde to indo
		image_xscale = sign(hspd);
	}else {
		sprite_index = spr_player_idle;
	}
	
}else // não esta no chão
{ 
	//mudando a sprite
	if(vspd < 0){
	sprite_index = spr_player_jump;
	}else
	{
		sprite_index = spr_player_fall;
		
		//indo para baixo
		var _inimigo = instance_place(x,y+1, obj_inimigo_pai);
		if(_inimigo){
			vspd = -vel_jump;
			
			//Avisando que acertei ele e ele toma dano
			_inimigo.dano = true;
		}
	}
	
	// dash
	if(_dash){
		if(sign(hspd)){
			hspd +=3.5;
		}else {
			hspd -=3.5;
		}
		
	}
	
	// aplicando gravidade
	vspd += grv;
	//mudando sprite no ar
	if(hspd != 0){
		image_xscale = sign(hspd);
	}
}

//checando se esta dentro da sala
if (keyboard_check(ord("K"))){
	game_restart();
}

//pegando a chave
if (inventory.key == 3){
	room_goto_next();
}

// vidas
if (life == 0){
	game_restart();
}


