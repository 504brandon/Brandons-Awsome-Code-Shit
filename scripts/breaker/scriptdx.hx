function updatePost(elapsed) {
	switch (curStep) {
		case 16:
			defaultCamZoom = 0.87;
			FlxG.camera.flash();

		case 305:
			FlxG.camera.flash();
			defaultCamZoom = 0.89;
			changeDad(mod + ":dxangy");

		case 563:
			var black = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height + 10, 0xFF070808);
			black.screenCenter();
			black.cameras = [camHUD];
			add(black);

			FlxTween.tween(black, {alpha: 0}, 6.85);

			changeDad(mod + ":dx");

		case 692:
			FlxG.camera.flash();
			changeDad(mod + ":dxangy");
	}
}