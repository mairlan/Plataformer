life = 100 // vida
spd = 2; // velocidade
hspd = 0; // velocidade horizontal
vspd = 0; // velocidade vertical
grv = 0.25; // gravidade
vel_jump = 6;

porta_parado = false;

dano = false;
tempo_dano = room_speed * 0.5;
timer_dano = 0; 

inv_tempo = room_speed * 2;
inv_timer = 0;

inputs = {
	left: ord("A"),
	right: ord("D"),
	jump: vk_space,
	dash: vk_shift,
	next: ord("W")
	
}
inventory = {
	key: false
}