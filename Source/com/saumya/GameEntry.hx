package com.saumya;

import openfl.display.Graphics;
import openfl.display.Sprite;

import ru.stablex.ui.UIBuilder;

import ru.stablex.ui.widgets.Text;

class GameEntry extends Sprite {
	

	private var gWidth:Float;
	private var gHeight:Float;
	
	private var t:Text;


	public function new() {
		super();
		initialise();
	}

	public function initialise():Void{
		trace("GameEntry : initialise : ");

		UIBuilder.init();

		gWidth = 400;
		gHeight = 600;

		construct();
	}

	public function construct():Void{
		trace("GameEntry : construct : ");
		drawBg();
		/*
		//StablexUI Widget
		this.t = UIBuilder.create(Text, {
			w: 200, h: 40,
		    left : 0, top  : 0,
		    text : 'My first widget!'
		});
		addChild(this.t);
		*/
		addChild( UIBuilder.buildFn('sui/ScrollView.xml')() );
	}

	public function restart(?newWidth:Float,?newHeight:Float):Void{
		trace("GameEntry : restart : ");
		trace("GameEntry : restart : ",newWidth,newHeight);
		gWidth = newWidth;
		gHeight = newHeight;

		drawBg();
	}

	private function drawBg():Void{
		var g:Graphics = this.graphics;
		g.clear();
		g.beginFill(0xFF0000);
		g.drawRect(0,0,gWidth,gHeight);
		g.endFill();
	}

}