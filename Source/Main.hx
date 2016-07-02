package;


import openfl.display.Sprite;

import com.saumya.GameEntry;


class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		
		
		var game:GameEntry = new GameEntry();
		addChild(game);
	}
	
	
}