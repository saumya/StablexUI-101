package;


import openfl.display.Sprite;
import openfl.events.Event;

import com.saumya.GameEntry;


class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
		
		
	}

	private function onAddedToStage(e:Event):Void{
		this.removeEventListener(Event.ADDED_TO_STAGE,onAddedToStage);

		var game:GameEntry = new GameEntry();
		addChild(game);
	}
	
	
}