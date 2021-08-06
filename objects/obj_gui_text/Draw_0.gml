if(global.ufo_state == 0)
{
	draw_self();

	draw_set_font(fnt_score);

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	if(global.first_time == 1)
	{
		draw_text(x + 0, y + 0, string("Press space to start!") + "");
	}
	else if(global.first_time == 0)
	{
		draw_text(x + 0, y + 0, string("Game Over. Press space to restart.") + "");
	}

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}