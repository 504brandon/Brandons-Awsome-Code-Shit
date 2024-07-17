var stage:Stage = null;
function create() {
	stage = loadStage('dx-twitter');
}
function update(elapsed) {
	stage.update(elapsed);

	if (curStep == 558) {
		camHUD.shake(0.025, 0.4);
		FlxTween.color(stage.getSprite("DXbg"), 0.4, 0xFFffffff, 0xffff0000);
	}
}
function beatHit(curBeat) {
	stage.onBeat();
}