#region controles
// controlando o Player
var _chao = place_meeting(x,y + 1, obj_ground);
var _left, _right, _jump;
_left = keyboard_check(inputs.left);
 _right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);
_dash = keyboard_check(inputs.dash);
_next = keyboard_check(inputs.next);

#endregion
//so posso me mover se o timer esta zerado
if(timer_dano <= 0){
	hspd = (_right - _left) * spd;
}
// porta colisão
var _porta = place_meeting(x,y, obj_porta);

//Inventario
if(inventory.item == true){
	instance_destroy(obj_blocked);
}

#region porta
//Colisão com a Porta
if (place_meeting(x +hspd, y, obj_porta))
{
while(!place_meeting(x+ sign(hspd), y, obj_porta))
{
x = x +sign(hspd);
}
hspd = 0;
}
x = x + hspd

if(inventory.key == true){
	instance_destroy(obj_porta);
}
#endregion
#region PULO
//pulando
//ELEVADOR PULO
var _elev = place_meeting(x, y +1,obj_elevator);
if(_elev){
	if (_jump){
		vspd = -vel_jump;
	}
}
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
		var _inimigo = instance_place(x,y+5, obj_inimigo_pai);
		if(_inimigo){
			dano = false;
			//se o inimigo não ta morto
			if(_inimigo.morto == false){
				vspd = vel_jump;
			
				//Avisando que acertei ele e ele toma dano
				_inimigo.dano = true;
			}
		}
}
#endregion
	// dash RESOLVIDO
	if(_dash && (_left or _right)){
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

#region REINICIANDO
if (keyboard_check(ord("K"))){
	game_restart();
}
if (keyboard_check(ord("R"))){
	room_restart();

}

if(dano == true){
	sprite_index = spr_player_dano;
	life--;
}
if(life <= 0){
	room_restart();
	life = 100;
}
/*
var _inicial_elev_x = obj_elevator.x;
var _inicial_elev_y = obj_elevator.y;
if (obj_player.x == global.checkpoint_x && obj_player.y == global.checkpoint_y){
	_inicial_elev_x
}
*/
#endregion



// se o timer do dano é maior q zero
if(timer_dano > 0){
	timer_dano--;
}else{
	//acabou o timer do dano
	dano = false;
}
if(inv_timer > 0){
	inv_timer--;
	
	image_alpha = .5;
}else {
	image_alpha = 1;
}
//tomando dano
var _inimigo = instance_place(x, y, obj_inimigo_pai);

if (_inimigo && inv_timer <= 0){

	if(_inimigo.morto == false && _inimigo.dano == false){
		dano = true;
		//dando o valor do time dano
		timer_dano = tempo_dano;
		inv_timer  = inv_tempo;
	}
}

//passando de fase
if (place_meeting(x,y, obj_next) && _next){
	room_goto_next();
}


//if (room == rm_fase2 )
//{
//	obj_player.x = 44; 
//	obj_player.y = 56;
//}