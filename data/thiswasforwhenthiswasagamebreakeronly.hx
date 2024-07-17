import LoadingState;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxAxes;

var brokenrel:FlxSprite = null;
var gay = 0;

function create() {
    var pico:FlxSprite = new FlxSprite(530, -340).loadGraphic(Paths.image('title/pico1'));
    pico.scale.set(0.5, 0.5);
    add(pico);

    var dx:FlxSprite = new FlxSprite(40, 130).loadGraphic(Paths.image('title/dx1'));
    dx.scale.set(1.6, 1.5);
    add(dx);

    brokenrel = new FlxSprite().loadGraphic(Paths.image('title/text'));
	brokenrel.antialiasing = true;
    brokenrel.scale.set(2.1, 2.1);
    brokenrel.screenCenter(FlxAxes.X);
    brokenrel.updateHitbox();
	add(brokenrel);
}

var angle = false;

function beatHit() {
    FlxTween.tween(brokenrel.scale, {x: 2.1, y: 2.1}, 0.1, {onComplete: function(tween) {
        FlxTween.tween(brokenrel.scale, {x: 1.9, y: 1.9}, 0.2);
    }});

    brokenrel.screenCenter(FlxAxes.X);
    brokenrel.updateHitbox();
}

function update(elapsed:Float) {
	if (FlxG.keys.justPressed.ENTER) {
		//CoolUtil.loadSong(mod, "Gamebreaker", "hard");
		//LoadingState.loadAndSwitchState(new PlayState_());
	}

    if (FlxG.keys.justPressed.ALT)
        FlxG.resetState();

	if (FlxG.keys.justPressed.G && gay == 0)
        gay++;
    if (FlxG.keys.justPressed.A && gay == 1)
        gay++;
    if (FlxG.keys.justPressed.Y && gay > 1){
        gay++;

        if (FlxG.save.data.gaybreaker == null){
            FlxG.save.data.gaybreaker = true;
			FlxG.save.data.flush();
		}else{
            FlxG.save.data.gaybreaker = !FlxG.save.data.gaybreaker;
			FlxG.save.data.flush();
		}

        if (FlxG.save.data.gaybreaker == true)
            CoolUtil.playMenuSFX(4);
        else
            CoolUtil.playMenuSFX(2);
    }
}