
function startDialogue(_topic) {
	if(instance_exists(obj_textbox))
		return;
	
	var _inst = instance_create_depth(x, y, -999, obj_textbox);
	_inst.setTopic(_topic);
}


function type(x, y, _text, _progress, _width) {
	var _draw_x = 130;
	var _draw_y = 0;
	
	for(var _i = 1; _i <= _progress; _i++) {
		var _char = string_char_at(_text, _i);
		
		/// Line breaks ///
		if(_char == "\n") {
			_draw_x = 130;
			_draw_y += string_height("A");
		}
		/// If a new word starts do a line break //
		else if(_char == " "){
			_draw_x += string_width(_char);
			
			var _word_width = 0;
			for(var _ii = _i + 1; _ii <= string_length(_text); _ii++) {
				var _word_char = string_char_at(_text, _ii);
				
				if(_word_char == "\n" || _word_char == " ")
				break;
				
				/// If word extends width boundary, line break ///
				_word_width += string_width(_word_char);
				if(_draw_x + _word_width > _width) {
					_draw_x = 130;
					_draw_y += string_height("A");
					break;
		
				}
			}
		}
		else {
			/// Draw letters ///
			draw_text(x + _draw_x, y + _draw_y, _char);
			_draw_x += string_width(_char);
		}
	}
}

