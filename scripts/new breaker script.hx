function createPost() {
  FlxG.resizeGame(640, 480);
  FlxG.resizeWindow(640, 480);

  Lib.application.window.resizable = false;

  for (obj in [healthBarBG, healthBar, iconP1, iconP2, timerBG, timerBar, timerText, timerNow, timerFinal])
  obj.kill();

  for (i in 0...4)
  cpuStrums.members[i].visible = false;

  for (note in PlayState.unspawnNotes) {
      if (!note.mustPress)
          note.visible = false;
  }

  boyfriend.scrollFactor.set(1.3,1.3);
}

function update() {
  if (!section.mustHitSection && defaultCamZoom < 1.75)
    defaultCamZoom += 0.20;
  else if (section.mustHitSection && defaultCamZoom > 1.4)
    defaultCamZoom -= 0.20;

  boyfriend.scale.set(camGame.zoom / 0.9, camGame.zoom / 0.9);

  for (note in PlayState.notes) {
    note.angle = 0;
  }

  if (curStep == 302)
    changeDad(mod + ":dx-twitter");
}

var tweens:Array<FlxTween> = [];

function onDadHit(daNote) {
	if (curStep > 304 && !daNote.isSustainNotes) {
		var obj = playerStrums.members[daNote.noteData % 4];
		obj.alpha = 0.3;
		obj.angle = if (FlxG.random.bool(40)) -30 else 30;

    if (tweens[daNote.noteData % 4] != null)
      tweens[daNote.noteData % 4].cancel();

    var tween;
		tween = FlxTween.tween(obj, {alpha: 1, angle: 0}, 0.3);
    tweens[daNote.noteData % 4] = tween;
	}
}