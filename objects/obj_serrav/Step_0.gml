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

if (room==rm_final)
{
hspd = 0.25
}
// Verifique se há colisão com a parede
if (place_meeting(x, y + spd, obj_parede) || place_meeting(x, y - spd, obj_parede)) {
    spd *= -1; // Inverta a direção se houvedr colisão com a parede
}


// Mova o objeto na direção atual
y += spd;
