const functions = require("firebase-functions");
const axios = require("axios");

exports.fetchTweetOembedApi = functions.https.onRequest(async (req, res) => {
  try {
    // Get the tweet ID from the request query parameters
    const tweetId = req.query.tweetId;

    // Check if tweetId is provided
    if (!tweetId) {
      return res.status(400).json({ error: "Tweet ID is missing" });
    }

    // Call Twitter oEmbed API
    const response = await axios.get(
      `https://publish.twitter.com/oembed?url=https://twitter.com/twitter/status/${tweetId}`,
    );

    // Check if the response is successful
    if (response.status !== 200) {
      return res
        .status(response.status)
        .json({ error: "Failed to fetch tweet" });
    }

    // Return the oEmbed response
    return res.status(200).json(response.data);
  } catch (error) {
    console.error("Error fetching tweet:", error);
    return res.status(500).json({ error: "Internal server error" });
  }
});
