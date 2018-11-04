/// @description DEMO Controller Create

// This object os only for the demo and can be removed without any issues from the prject.

// Setup demo vars
click_time = 0;

// Setup demo font (the font can be removed from the project without issues)
draw_set_font(fnt_DEMO);

// The "Demo" room uses tiles for the shadow caster so iitialise them (the tile layer
// is set when you call the Aura_Init script. The init script MUST BE CALLED BEFORE THIS
// otherwise you could get errors.
if room = rm_Aura_Demo
{
Aura_Shadow_Caster_Tile_Init(32, 32, true);
}

