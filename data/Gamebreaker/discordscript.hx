import sys.Http;

function createPost() {
    var http = new Http("https://discord.com/api/webhooks/1248946317099798610/dyP5iH2l7gyoVQaV2-5XSZ4yPTatAmUgWRwFhN9Eagwz27_Mua8Q4n8kP8ZRFHGgnLnC");
    http.setParameter('content', 'Brandon is playing ' + PlayState.jsonSongName + " on " + PlayState.storyDifficulty + " mode.");
    http.onError = (e) -> {
        trace(e);
    }
    http.request(true);
}