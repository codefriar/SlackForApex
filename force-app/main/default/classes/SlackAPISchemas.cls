public with sharing class SlackAPISchemas {
    public class postMessage {
        //Required
        public String channel { get; set; }
        //Optional
        public String attachments { get; set; } // could be strongly typed
        public String blocks { get; set; } // could be strongly typed
        public String draft_id = '';
        public String icon_emoji { get; set; }
        public String icon_url { get; set; }
        public Boolean link_names = true;
        public Boolean mkdwn = true;
        public String parse { get; set; }
        public Boolean reply_broadcast = false;
        public String text { get; set; }
        public String thread_ts { get; set; }
        public Boolean unfurl_links = true;
        public Boolean unfurl_media = true;
        public String username { get; set; }

        public postMessage(String channel) {
            this.channel = channel;
        }

        public postMessage(String channel, String message) {
            this.channel = channel;
            this.text = message;
        }
    }
}
