/// @description Insert description here
// You can write your code in this editor

// colisão horisontal
var _col = instance_place(x + hspd, y, obj_ground);
// se colidir grudo em quem colidir
if (_col)
{
	// checando se estou indo para a direita
	if(hspd > 0){
		// grudando na parte esquerda
		x = _col.bbox_left + (x - bbox_right);
	}
	
	// checando se estou indo para a esquerda
	if(hspd < 0){
		x = _col.bbox_right + (x - bbox_left);

	}
	//se eu colidir não importando o lado eu paro
	hspd = 0;
}
var _col = instance_place(x, y + vspd, obj_ground);
if (_col)
{
	// checando se estou indo para a baixo
	if(vspd > 0){
		y = _col.bbox_top +(y - bbox_bottom);
	}
	
	// checando se estou indo para a cima
	if(vspd < 0){
		y = _col.bbox_bottom + (y - bbox_top);
	}
	//se eu colidir não importando o lado eu paro
	vspd = 0;
}
x +=  hspd;
y += vspd;

