// Fazer a serra girar
image_angle += rotation_speed;

// Verificar colisões com o jogador
if (place_meeting(x, y, obj_player)) {
    // Encontrou o jogador, causar dano
    with (obj_player) {
        life -= other.damage;
    }
}

var _col = instance_place(x+hspd, y, obj_parede);

if (_col && hspd == 1)
{
	hspd = -1;
}
if (hspd == -1 && place_meeting(x+-1, y, obj_parede)){
	hspd = 1;
}
x = x + hspd;


