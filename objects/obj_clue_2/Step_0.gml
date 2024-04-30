/// @description Insert description here
// You can write your code in this editor
//show_debug_message("running");

//if(global.topics == "Choose take it"){
//	event_user(0);
//}

//if(OPTION = "Choose take it"){
//	instance_destroy()
//}


//if(global.topics == "Choose take it"){
//	visible = false;
//}



//with (obj_clue_2) {
//	if(global.topics == "Choose take it"){
//		visible = false;
//	}
//}

while (script_execute(scr_topics(), "Choose take it")) {
	visible = false;
}

