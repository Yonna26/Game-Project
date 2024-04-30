/// Customization ///

/// Input ///
confirm_key = vk_enter; //button press to next page//
up_key = vk_up; //button press to move up in options //
down_key = vk_down; //button press to move down in options //
max_input_delay = 5;
input_delay = max_input_delay;

/// Positon ///
margin = 16; // space textbox has from edges of screen //
padding = 60; //space for things inside of textbox ///
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x = (display_get_gui_width() - width) / 2;
y = display_get_gui_height() - height - margin;

/// Text ///
text_font = fnt_text;
text_color = c_white;
text_speed = 0.6;
text_x = padding;
text_y = padding;
text_width = width - padding * 2;

// Option //
option_x = padding;
option_y = padding * -2;
option_spacing = 160;
option_selection_indent = 40;
option_width = 600;
option_height = 140;
option_text_x = 10;
option_text_color = c_white;

// Properties //
actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

options = [];
current_option = 0;
option_count = 0;

/// Have a conversation ///
setTopic = function(_topic) {
	actions = global.topics[$ _topic];
	current_action = -1;
	
	next();
}

/// Move to next action or close textbox ///
next = function() {
	current_action++;
	if (current_action >= array_length(actions)) {
		instance_destroy();
	}
	else {
		actions[current_action].act(id);
	}
}

/// Set text that will be typed ///
setText = function(_new_text) {
	text = _new_text;
	text_length = string_length(_new_text);
	text_progress = 0;
}


//global.visible = 0;
//visible = true;

//if visible == false {
//	instance_destroy(obj_clue_2);
//}
