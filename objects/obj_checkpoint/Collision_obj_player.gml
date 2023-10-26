 /// @description Insert description here
// You can write your code in this editor
if (image_index == 1)
{
        exit;
}
image_index = 1;

// ini file

ini_open("checkpoint.ini");
ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);
ini_close();


  








