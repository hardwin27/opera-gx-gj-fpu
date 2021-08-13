multiplayer_text = "OFF";
if(global.multiplayer)
{
	multiplayer_text = "ON";
}
else
{
	multiplayer_text = "OFF";	
}
if(!global.game_on)
{
	draw_self();

	draw_set_font(fnt_score);

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	if(global.first_time == 1)
	{
		draw_text(x + 0, y + 0, string("SPACE to start!") + "");
	}
	else if(global.first_time == 0)
	{
		draw_text(x + 0, y + 0, string("Game Over. SPACE to restart!") + "");
	}
	
	draw_text(x + 0, y + 32, string("\nMultiplayer is ") + multiplayer_text + ". Press ENTER to toggle." + "");

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}