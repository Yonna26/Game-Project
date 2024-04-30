#macro TEXT new TextAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction

function DialogueAction() constructor {
	act = function() { };
}


/// Define new text to type ///
function TextAction(_text) : DialogueAction() constructor {
	text = _text;
	
	act = function(_textbox) {
		_textbox.setText(text);
	}
}


//Define a branch in the dialogue//
function ChoiceAction(_text) : DialogueAction() constructor {
	text = _text;
	
	//Fill array with arguments
	options = [];
	for(var _i = 1; _i < argument_count; _i++)
		array_push(options, argument[_i]);
	
	act = function(_textbox){
		_textbox.setText(text);
		_textbox.options = options;
		_textbox.option_count = array_length(options);
		_textbox.current_option = 0;
	}
}

//Place option within ChoiceAction//
function OptionAction(_text, _topic): DialogueAction() constructor {
	text = _text;
	topic = _topic;
	
	act = function(_texbox){
		_texbox.setTopic(topic);
	}
}

//Automatically go to specific topic //
function GotoAction(_topic): DialogueAction() constructor {
	topic = _topic;
	
	act = function(_textbox){
		_textbox.setTopic(topic);
	}
}