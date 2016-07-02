package com.saumya;

import openfl.display.Sprite;

import ru.stablex.ui.UIBuilder;

class GameEntry extends Sprite {
	
	public function new() {
		super();
	}

	public function initialise():Void{
		trace("GameEntry : initialise : ");

		UIBuilder.init();
	}

	public function construct():Void{
		trace("GameEntry : construct : ");
	}

	public function restart(?newWidth:Float,?newHeight:Float):Void{
		trace("GameEntry : restart : ");
		
	}

}