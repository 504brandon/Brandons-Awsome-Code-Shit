import openfl.filters.ShaderFilter;
import flixel.FlxCamera;
import openfl.Lib;
import WindowsAPI;

var funni = false;
var black;
var time = 4;
var shader;

function createPost() {
	for (i in 0...4) {
		cpuStrums.members[i].angle = 90;
		cpuStrums.members[i].x = 1120;
		cpuStrums.members[i].y = 40 * i;
		cpuStrums.members[i].y += cpuStrums.members[i].y + 40;
		cpuStrums.members[i].cameras = [camGame];
	}

	black = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height + 10, 0xFF070808);
	black.screenCenter();
	black.cameras = [camHUD];
	black.visible = false;
	add(black);

	shader = new CustomShader(mod + ":gitchy funni");
	shader.shaderData.offset.value = [0.85];
	shader.shaderData.iTime.value = [time];
	shader.shaderData.iResolution.value = [69, 420];

	// camHUD.shaders = [shader];
}

var noteAngle = 0;
var noteY = 20;

function beatHit() {
	funni = !funni;

	if (curStep > 560 && curStep < 816) {
		/*FlxG.camera.shake(0.1, 0.1);

				if (funni == false){
					FlxG.camera.angle = 10;
					for (i in 0...4)
						playerStrums.members[i].angle += FlxG.random.float(0.75, 10);
				}else{
					FlxG.camera.angle = -10;
					for (i in 0...4)
						playerStrums.members[i].angle -= FlxG.random.float(0.75, 10);
			}

			FlxTween.tween(Lib.application.window, {y: Lib.application.window.y + FlxG.random.float(-20, 20)});
			FlxTween.tween(Lib.application.window, {x: Lib.application.window.x + FlxG.random.float(-20, 20)}); */

		for (i in 0...4) {
			// playerStrums.members[i].y = FlxG.random.int(1, 4) * 15;
		}

		if (funni) {
			noteAngle = 10;
			noteY = 60;
			camHUD.zoom += 0.210;
		} else {
			noteAngle = -20;
			noteY = -60;
			camHUD.zoom -= 0.120;
		}
	}
}

function update(elapsed) {
	time += elapsed;

	for (i in 0...4) {
		// playerStrums.members[i].angle = FlxMath.lerp(noteAngle, playerStrums.members[i].angle, 0.85);
		// playerStrums.members[i].y = FlxMath.lerp(noteY, playerStrums.members[i].y, 0.85);
	}

	if (FlxG.keys.pressed.TWO) {
		misses += 999999; // test if text workin right
	}

	if (dad.animation.curAnim.name == 'singUP-alt')
		FlxG.camera.shake(0.050, 0.050);
}

if (PlayState.storyDifficulty.toLowerCase() != "saster") {
	switch (curStep) {
		case 17:
			FlxG.camera.flash();
		case 304:
			FlxG.camera.flash();
			var shader = new CustomShader(mod + ":gitchy funni");
			shader.shaderData.offset.value = [0.85];
			shader.shaderData.iTime.value = [time];
			shader.shaderData.iResolution.value = [69, 420];
			// stage.getSprite('bg').shader = shader;
			changeDad(mod + ":gaybreaker");
		case 560:
			if (FlxG.random.bool(0.1))
				Medals.unlock("holy shit the game broke");
			FlxG.camera.flash();
		case 687:
			FlxG.camera.flash();
		case 816:
			FlxG.camera.flash();
			noteAngle = 0;
			noteY = 20;
			changeDad(mod + ":wtfisthislikelgtwtffff");
		case 1327:
			black.visible = true;
			FlxTween.tween(black, {alpha: 0.2}, 13.2);
			changeDad(mod + ":wtfisthis");
			defaultCamZoom = 0.65;
			FlxG.camera.flash();
		case 1600:
			FlxG.camera.flash();
			changeDad(mod + ":what da heilllllllllllllllllllllllllllllllllllllllllll");
			defaultCamZoom = 0.92;
			black.alpha = 0.000000001;
		/*stage.getSprite('BGG').alpha = 1;
			stage.getSprite('gg').alpha = 1;
			stage.getSprite('pilla1').alpha = 1;
			stage.getSprite('pilla2').alpha = 1; */
		case 1727:
			FlxG.camera.flash();
		case 2111:
			black.alpha = 1;
			FlxTween.tween(black, {alpha: 0.2}, 0.4);
			changeDad(mod + ":dx");
	}
} else {
	switch (curStep) {
		case 17:
			FlxG.camera.flash();
		case 304:
			FlxG.camera.flash();
			var shader = new CustomShader(mod + ":gitchy funni");
			shader.shaderData.offset.value = [0.85];
			shader.shaderData.iTime.value = [time];
			shader.shaderData.iResolution.value = [69, 420];
			// stage.getSprite('bg').shader = shader;
			changeDad(mod + ":dxangy");
		case 560:
			if (FlxG.random.bool(0.1))
				Medals.unlock("holy shit the game broke");
			FlxG.camera.flash();
			changeDad(mod + ":gaybreaker");
		case 687:
			FlxG.camera.flash();
		case 816:
			FlxG.camera.flash();
			noteAngle = 0;
			noteY = 20;
			changeDad(mod + ":wtfisthislikelgtwtffff");
		case 1327:
			black.visible = true;
			FlxTween.tween(black, {alpha: 0.2}, 13.2);
			changeDad(mod + ":wtfisthis");
			defaultCamZoom = 0.65;
			FlxG.camera.flash();
		case 1728, 1732, 1735, 1739:
			FlxG.camera.flash();
			black.alpha += 0.5;
		case 1743:
			black.alpha = 0.000000001;
			FlxG.camera.flash();
			changeDad(mod + ":what da heilllllllllllllllllllllllllllllllllllllllllll");
			defaultCamZoom = 0.92;
		/*stage.getSprite('BGG').alpha = 1;
			stage.getSprite('gg').alpha = 1;
			stage.getSprite('pilla1').alpha = 1;
			stage.getSprite('pilla2').alpha = 1; */
		case 2287:
			black.alpha = 1;
		case 2297:
			black.alpha = 0.000001;
			FlxG.camera.flash();
			changeDad(mod + ":dx-new");
		/*stage.getSprite('BGG').destroy();
			stage.getSprite('gg').destroy();
			stage.getSprite('pilla1').destroy();
			stage.getSprite('pilla2').destroy(); */
		case 2429:
			changeDad(mod + ":dxangy");
			FlxG.camera.flash();
		case 2493:
			FlxG.camera.flash();
			changeDad(mod + ":wtfisthislikelgtwtffff");
	}
}