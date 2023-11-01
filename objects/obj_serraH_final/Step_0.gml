 // Fazer a serra girar
image_angle += rotation_speed;

// Verificar colisões com o jogador
if (place_meeting(x, y, obj_player)) {
    // Encontrou o jogador, causar dano
    with (obj_player) {
        life -= other.damage;
    }
}

var _col = instance_place(x, y, obj_parede);


// Verifique se há colisão com a parede
if(global.initial == true){

	// Mova o objeto na direção atual
	x += spd;
}

