var _col = instance_place(x, y, obj_parede);


// Verifique se há colisão com a parede
if (place_meeting(x, y + spd, obj_elev_parede) || place_meeting(x, y - spd, obj_elev_parede)) {
    spd *= -1; // Inverta a direção se houver colisão com a parede
}

// Mova o objeto na direção atual
y -= spd;



