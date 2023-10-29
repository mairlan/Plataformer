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
if (place_meeting(x + spd, y, obj_parede) || place_meeting(x - spd, y, obj_parede)) {
    spd *= -1; // Inverta a direção se houver colisão com a parede
}

if (room==final)
{
spd = 6.3	
}
// Mova o objeto na direção atual
x += spd;
