 /// @description Insert description here
// You can write your code in this editor

if (file_exists("checkpoint.ini") && room == rm_fase1)
{
        ini_open("checkpoint.ini");
        x = ini_read_real("player", "x", x);
        y = ini_read_real("player", "y", y);
        ini_close();
}
if (file_exists("checkpoint2.ini") && room == rm_fase2)
{
        ini_open("checkpoint2.ini");
        x = ini_read_real("player", "x", x);
        y = ini_read_real("player", "y", y);
        ini_close();
}
if (file_exists("checkpoint3.ini") && room == rm_final)
{
        ini_open("checkpoint3.ini");
        x = ini_read_real("player", "x", x);
        y = ini_read_real("player", "y", y);
        ini_close();
}







