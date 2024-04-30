/// Get input ///
var _confirm = keyboard_check_pressed(confirm_key);

/// Type out text ///
text_progress = min(text_progress + text_speed, text_length);

//Ignore inputs when there is a delay //
if (input_delay > 0){
	input_delay--;
	exit;
}

/// Finished typing? ///
if (text_progress == text_length){
	if(option_count > 0){
		var _up = keyboard_check_pressed(up_key);
		var _down = keyboard_check_pressed(down_key);
		
		//Cycle through options//
		var _change = _down - _up;
		if(_change != 0) {
			current_option += _change;
			
			//Wrap options//
			if (current_option < 0)
				current_option = option_count - 1;
			else if (current_option >= option_count)
				current_option = 0;
		}
		
		//Select an option//
		if(_confirm){
			var _option = options[current_option];
			options = [];
			option_count = 0;
			
			_option.act(id);
		}
	}
	else if(_confirm) {
		next();
	}
}
else if(_confirm) {
	text_progress = text_length;
}






