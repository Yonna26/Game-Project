

global.topics = {};

global.topics[$ "Example"] = [
TEXT("Hello..."),
TEXT("What is this??"),
TEXT("What is this supposed to mean? I did everything I was supposed to do for my checkpoint!")
];

global.topics[$ "Random Character"] = [
TEXT("Ahhh!"),
TEXT("I can't believe this happened!"),
TEXT("Everything is so scary right now, I just want to go home and get in my bed and pretend this never happened!")
];

global.topics[$ "What now?"] = [
TEXT("I can't belive this happened! I am so scared!"),
CHOICE("What should we do now??",
	OPTION("Let's figure out who did this.", "Choose Let's figure out who did this."),
	OPTION("Let's lay down and cry.", "Choose Let's lay down and cry."))
];

global.topics[$ "Choose Let's figure out who did this."] = [
TEXT("Yea! We can't let this person get away with this!"),
GOTO("Hope")
];

global.topics[$ "Choose Let's lay down and cry."] = [
TEXT("Lay down and cry?? I think that will make the situation worse if we do that!"),
GOTO("Hope")
];

global.topics[$ "Hope"] = [
TEXT("I hope we figure this out before someone else gets hurt...")
];

global.topics[$ "Purse"] = [
TEXT("Oh look, someone's purse."),
CHOICE("Should I take the purse?",
	OPTION("Let's take it.", "Choose take it"),
	OPTION("Leave it be", "Choose leave it be"))
];

global.topics[$ "Choose take it"] = [];


global.topics[$ "Choose leave it be"] = [
TEXT("Yea, I should probably leave this be.")
];

