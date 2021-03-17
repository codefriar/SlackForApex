public with sharing class SlackApi extends RestClient {
    @testVisible
    private static final String DEFAULTNAMEDCREDENTIAL = 'Slack_Web_API';

    public class SlackApiException extends Exception {
    }

    public SlackApi() {
        namedCredentialName = DEFAULTNAMEDCREDENTIAL;
    }

    public String sendMessage(String channel, String message) {
        SlackApiSchemas.postMessage msgToSend = new SlackApiSchemas.postMessage(
            channel,
            message
        );
        HttpResponse response = post(
            '/chat.postMessage',
            JSON.serialize(msgToSend)
        );
        system.debug('@@@@@ ' + response);
        return response.getBody();
    }
}
