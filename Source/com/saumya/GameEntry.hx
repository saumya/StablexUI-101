package com.saumya;

import openfl.display.Graphics;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import openfl.events.Event;
import openfl.events.ErrorEvent;
import openfl.events.IOErrorEvent;

import openfl.net.URLLoader;
import openfl.net.URLRequest;
import openfl.net.URLRequestMethod;
import openfl.net.URLRequestHeader;


import ru.stablex.ui.UIBuilder;

import ru.stablex.ui.widgets.Text;
import ru.stablex.ui.widgets.InputText;
import ru.stablex.ui.widgets.VBox;
import ru.stablex.ui.widgets.Button;

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
		
		//StablexUI Widget
		this.t = UIBuilder.create(Text, {
			w: 100, h: 40,
		    left : 0, top  : 0,
		    text : '[code widget]'
		});
		//addChild(this.t);
		
		this.addChild( UIBuilder.buildFn('sui/ScrollView.xml')() );
		//
		//var vBox:VBox = cast UIBuilder.get('idVBox');
		var vBox:VBox = cast UIBuilder.getAs('idVBox', VBox);
		vBox.addChild(this.t);
		//
		this.addChild( UIBuilder.buildFn('sui/WidgetsView.xml')() );
		//
		//idMyBtn
		var btnMyBtn:Button = cast UIBuilder.getAs('idMyBtn', Button);
		btnMyBtn.addEventListener('click', onBtnClick);
		//
		this.addChild( UIBuilder.buildFn('sui/WidgetLogin.xml')() );
		var btnLogin:Button = cast UIBuilder.getAs('idLogin', Button);
		btnLogin.addEventListener('click', onLogin);
	}
	
	private function onBtnClick(e:MouseEvent):Void{
		trace('Button Clicked !');
		var t:Text = UIBuilder.create(Text, {
			w: 100, h: 40,
		    left : 0, top  : 0,
		    text : '[code widget]'
		});
		var vBox:VBox = cast UIBuilder.getAs('idVBox', VBox);
		vBox.addChild(t);
	}
	
	private function onLogin(e:MouseEvent):Void{
		trace('Button Clicked : Login ');
		// make an API call
		var url = "http://mydomain.com/app/app_version.php";     
    	var request:URLRequest = new URLRequest(url);
    	request.method = URLRequestMethod.GET;
    	request.contentType = "application/json";
    	var urlLoader = new URLLoader();
    	urlLoader.addEventListener(Event.COMPLETE, function(evt){
    		var data = haxe.Json.parse(evt.target.data);
    		trace(data);
    		trace('App ID ='+data.app_id+' : App Version ='+data.app_version);
    	});
    	urlLoader.addEventListener(ErrorEvent.ERROR, function(err) { trace("Error"); } );
		urlLoader.addEventListener(IOErrorEvent.IO_ERROR, function(err) { trace("IOError"); } );
		//
		urlLoader.load(request);

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
		g.beginFill(0xAAAAAA);
		g.drawRect(0,0,gWidth,gHeight);
		g.endFill();
	}

}