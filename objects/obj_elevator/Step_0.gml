var _col = instance_place(x, y, obj_parede);


// Verifique se há colisão com a parede
if(global.elev == true){
	if (place_meeting(x, y + spd, obj_elev_parede) || place_meeting(x, y - spd, obj_elev_parede)) {
	    spd *= -1; // Inverta a direção se houver colisão com a parede
	}


// Mova o objeto na direção atual
y -= spd;
}

// Verifica se o jogador retornou a uma coordenada específica
if (obj_player.x == obj_checkpoint.x && obj_player.y == obj_checkpoint.y) {
	obj_elevator.x = inicial_x;
	obj_elevator.y = inicial_y;
}
