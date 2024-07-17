function update(elapsed) {
PlayState.dad.addCameraOffset("singLEFT", -20, 0);
PlayState.dad.addCameraOffset("singDOWN", 0, 20);
PlayState.dad.addCameraOffset("singUP", 0, -20);
PlayState.dad.addCameraOffset("singUP-alt", 0, -20);
PlayState.dad.addCameraOffset("singRIGHT", 20, 0);


PlayState.boyfriend.addCameraOffset("singLEFT", -20, 0);
PlayState.boyfriend.addCameraOffset("singDOWN", 0, 20);
PlayState.boyfriend.addCameraOffset("singUP", 0, -20);
PlayState.boyfriend.addCameraOffset("singRIGHT", 20, 0);
}