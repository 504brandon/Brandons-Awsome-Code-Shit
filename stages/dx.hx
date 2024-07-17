import flixel.FlxCamera;

var stage:Stage = null;
var camMain:FlxCamera;

function create() {
	stage = loadStage('dx');
}

function createPost() {
	for (i in 0...4) {
		cpuStrums.members[i].angle = 90;
		cpuStrums.members[i].x = 1120;
		cpuStrums.members[i].y = 40 * i - 25;
		cpuStrums.members[i].y += cpuStrums.members[i].y + 40;
		cpuStrums.members[i].cameras = [camGame];
	}

	for (note in PlayState.unspawnNotes) {
		if (!note.mustPress) {
			note.cameras = [camGame];
            if (note.strumTime < 30500)
                note.visible = false;

			if (FlxG.random.bool(30) && !note.isSustainNote) {
                var arry:Array<String> = ["purple", "blue", "green", "red"];

				note.frames = Paths.getSparrowAtlas('dxnotes');
				note.animation.addByPrefix('scroll', arry[note.noteData % PlayState.SONG.keyNumber]);
				note.animation.play('scroll');
			}
		}
	}

	camMain = new FlxCamera();
    camMain.bgColor = 0x00ffffff;
    camMain.follow(camFollow, "LOCKON", camFollowLerp);
    FlxG.cameras.add(camMain);
	FlxG.cameras.add(camHUD, false);
	
	stage.getSprite("pillar1").cameras = [camMain];
	stage.getSprite("pillar2").cameras = [camMain];
	stage.getSprite("Ground").cameras = [camMain];
}

function update(elapsed) {
	stage.update(elapsed);

	if (dad.animation.curAnim.name == 'singUP-alt'){
		FlxG.camera.shake(0.050, 0.050);
		camMain.shake(0.050, 0.050);
	}

	camMain.zoom = camGame.zoom;
	dad.cameras = [camMain];
	boyfriend.cameras = [camMain];

	if (curStep == 815 && PlayState.jsonSongName.toLowerCase() == "gamebreaker" && PlayState.storyDifficulty.toLowerCase() == "saster"){
		stage.getSprite("bg").color = 0xFF5e5d5c;
		stage.getSprite("pillar1").color = 0xFF5e5d5c;
		stage.getSprite("pillar2").color = 0xFF5e5d5c;
		stage.getSprite("Ground").color = 0xFF5e5d5c;
	}

	if (curStep == 1743 && PlayState.jsonSongName.toLowerCase() == "gamebreaker" && PlayState.storyDifficulty.toLowerCase() == "saster"){
		stage.getSprite("bg").color = 0xFFcf0221;
		stage.getSprite("pillar1").color = 0xFFcf0221;
		stage.getSprite("pillar2").color = 0xFFcf0221;
		stage.getSprite("Ground").color = 0xFFcf0221;
	}

	if (curStep == 2297 && PlayState.jsonSongName.toLowerCase() == "gamebreaker" && PlayState.storyDifficulty.toLowerCase() == "saster"){
		stage.getSprite("bg").color = 0xFFffffff;
		stage.getSprite("pillar1").color = 0xFFffffff;
		stage.getSprite("pillar2").color = 0xFFffffff;
		stage.getSprite("Ground").color = 0xFFffffff;
	}
}

function beatHit() {
	stage.onBeat();
}