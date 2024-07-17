var gay = 0;

function update(elapsed){
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