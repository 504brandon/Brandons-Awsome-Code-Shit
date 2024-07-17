function updatePost(elapsed){
    if (!section.mustHitSection && defaultCamZoom < 1.25)
        defaultCamZoom += 0.20;
    else if (section.mustHitSection && defaultCamZoom > 1.1)
        defaultCamZoom -= 0.20;

    switch (curStep){
        case 383:
            FlxTween.tween(camHUD, {alpha: 0}, 4);
        case 440:
            dad.visible = true;
            dad.playAnim("thing", true);
            FlxTween.tween(camHUD, {alpha: 1}, 1.2);
    }
}