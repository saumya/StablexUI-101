package com.saumya;

import openfl.display.Graphics;
import openfl.display.Sprite;

import ru.stablex.ui.UIBuilder;

import ru.stablex.ui.widgets.Text;

class GameEntry extends Sprite {
	
	private var t:Text;

	public function new() {
		super();

		initialise();
	}

	public function initialise():Void{
		trace("GameEntry : initialise : ");

		UIBuilder.init();
		construct();
	}

	public function construct():Void{
		trace("GameEntry : construct : ");

		var g:Graphics = this.graphics;
		g.clear();
		g.beginFill(0xFF0000);
		g.drawRect(0,0,200,400);
		g.endFill();
		
		this.t = UIBuilder.create(Text, {
			w: 200, h: 40,
		    left : 0, top  : 0,
		    text : 'My first widget!'
		});
		addChild(this.t);
		
	}

	public function restart(?newWidth:Float,?newHeight:Float):Void{
		trace("GameEntry : restart : ");
		
	}

}