///@function draw_custom_healthbar(sprite, subimg, currentstat, maxstat, x, y);
///@description Draw a gui bar based on the variables inputted
///@param sprite The sprite index of the healthbar to draw
///@param subimg The image index / frame of the healthbar to draw
///@param currentstat The value of the current stat, that is what the health/experience/stamina etc. is at that moment
///@param maxstat The maximum value the stat can reach before it can't go any further (level reached / health full)
///@param x The x-coordinate to draw the healthbar at
///@param y The y-coordinate to draw the healthbar at
draw_sprite_part(argument0,argument1,0,0,argument2*(sprite_get_width(argument0)/argument3),sprite_get_height(argument0),argument4,argument5);