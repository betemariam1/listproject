const admin = require("firebase-admin/app");
admin.initializeApp();

const fetchTweetOembedApi = require("./fetch_tweet_oembed_api.js");
exports.fetchTweetOembedApi = fetchTweetOembedApi.fetchTweetOembedApi;
