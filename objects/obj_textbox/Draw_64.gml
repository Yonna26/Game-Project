/// Draw box ///
draw_sprite_stretched(sprite_index, 0, x, y, width, height);

var _finished = text_progress == text_length;

/// Text ///
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_color(text_color);
type(x + text_x, y + text_y, text, text_progress, text_width);

//options //
if(_finished && option_count > 0){
	draw_set_valign(fa_middle);
	draw_set_color(option_text_color);
	for (var _i = 0; _i < option_count; _i++){
		var _opt_x = x + option_x;
		var _opt_y = y + option_y - (option_count - _i - 1) * option_spacing;
		
		//Selected option is indented with arrow//
		if(_i == current_option){
			_opt_x += option_selection_indent;
			draw_sprite(spr_arrow, 0, _opt_x - 65, _opt_y - 30);
		}
		
		draw_sprite_stretched(spr_option, 0, _opt_x, _opt_y - option_height / 2, option_width, option_height);
		draw_text(_opt_x + option_text_x, _opt_y, options[_i].text);
	}
}



