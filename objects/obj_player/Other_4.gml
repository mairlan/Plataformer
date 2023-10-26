 /// @description Insert description here
// You can write your code in this editor

if (file_exists("checkpoint.ini"))
{
        ini_open("checkpoint.ini");
        x = ini_read_real("player", "x", x);
        y = ini_read_real("player", "y", y);
        ini_close();
}
if (room == TEST_ROOM)
{
	obj_player.x = 44; 
	obj_player.y = 56;
}









