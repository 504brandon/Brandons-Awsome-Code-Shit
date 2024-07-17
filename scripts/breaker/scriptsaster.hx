var black;

function createPost() {
	black = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height + 10, 0xFF070808);
	black.screenCenter();
	black.cameras = [camHUD];
	black.visible = false;
	add(black);
}

var funni:Bool = false;

function beatHit() {
	funni = !funni;

	if (curStep > 560 && curStep < 816) {
		if (funni) {
			camHUD.zoom += 0.210;
		} else {
			noteAngle = -20;
			camHUD.zoom -= 0.120;
		}
	}
}

function update(elapsed) {
	if (FlxG.keys.pressed.TWO) {
		misses += 999999; // test if text workin right
	}

	if (FlxG.keys.pressed.SIX)
		Conductor.songPosition += 500;

	switch (curStep) {
		case 17:
			camHUD.flash();
		case 304:
			FlxG.camera.flash(0xFFff0015);
			changeDad(mod + ":dxangy");
		case 560:
			if (FlxG.random.bool(0.1))
				Medals.unlock("holy shit the game broke");
			camHUD.flash();
			//changeDad(mod + ":gaybreaker");
		case 687:
			camHUD.flash();
		case 816:
			camHUD.flash();
			noteAngle = 0;
			noteY = 20;
			changeDad(mod + ":dxp3new");
		case 1327:
			black.visible = true;
			FlxTween.tween(black, {alpha: 0.2}, 13.2);
			changeDad(mod + ":wtfisthis");
			dad.visible = false;
			defaultCamZoom = 0.65;
			camHUD.flash();
		case 1728, 1732, 1735, 1739:
			camHUD.flash();
			black.alpha += 0.5;
		case 1743:
			black.alpha = 0.000000001;
			camHUD.flash();
			changeDad(mod + ":what da heilllllllllllllllllllllllllllllllllllllllllll");
			dad.visible = true;
			defaultCamZoom = 0.92;
		case 2287:
			black.alpha = 1;
		case 2297:
			black.alpha = 0.000001;
			camHUD.flash();
			changeDad(mod + ":dx-new");
		case 2429:
			changeDad(mod + ":dxangy");
			camHUD.flash();
		case 2493:
			camHUD.flash();
			changeDad(mod + ":wtfisthislikelgtwtffff");
	}
}