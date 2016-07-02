package;


import openfl.display.Sprite;
import openfl.events.Event;

import com.saumya.GameEntry;


class Main extends Sprite {
	
	private var game:GameEntry;

	public function new () {
		super ();
		this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
	}

	private function onAddedToStage(e:Event):Void{
		this.removeEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
		stage.addEventListener(Event.RESIZE,onStageResize);

		initalise();
	}

	private function initalise():Void{
		game = new GameEntry();

		construct();
	}

	private function construct():Void{
		addChild(game);
	}

	private function onStageResize(e:Event):Void{
		game.restart(stage.stageWidth,stage.stageHeight);
	}
	
	
}