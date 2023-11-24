# rp_dWebhook
rp_dWebhook - A Simple Discord Webhook Utility for RedM

`rp_dWebhook`, is a straightforward and efficient solution for integrating Discord notifications into your RedM server. Designed to simplify communication between RedM and Discord, this utility resource allows for seamless transmission of messages from your RedM server directly to your Discord server through webhooks.

The main purpose of `rp_dWebhook` is to offer a centralized utility that streamlines the process of sending webhook messages to Discord. Whether it's for notifying server events, player interactions, or custom alerts, `rp_dWebhook` provides a hassle-free way to keep your community connected and informed.

## Installation
Rename the root folder to `rp_dWebhook` and place it in the `/resources/[system]` or `/resources/[utility]` folder on your server and be sure to ensure the resource!
``ensure rp_dWebhook`` 

## Documentation
To make this very simple and easy to use, there is a single event to call to send anything you want with relative ease!

The event takes two inputs: Discord Message JSON Payload and Discord Webhook URL

### Discord Message JSON Payload
To send messages to Discord, rp_dWebhook requires a JSON payload that follows Discord's message structure. Here is an example of such a JSON payload:

``` JSON
{
  "content": "Main message content",
  "username": "Custom Webhook Name",
  "avatar_url": "https://example.com/avatar.jpg",
  "tts": false,
  "embeds": [
    {
      "title": "Embed Title",
      "description": "Embed Description",
      "url": "https://example.com",
      "color": 15258703,
      "timestamp": "2023-11-23T12:34:56.789Z",
      "footer": {
        "text": "Embed Footer Text",
        "icon_url": "https://example.com/footer_icon.jpg"
      },
      "thumbnail": {
        "url": "https://example.com/thumbnail.jpg"
      },
      "image": {
        "url": "https://example.com/image.jpg"
      },
      "author": {
        "name": "Author Name",
        "url": "https://example.com/author",
        "icon_url": "https://example.com/author_icon.jpg"
      },
      "fields": [
        {
          "name": "Field 1 Title",
          "value": "Field 1 Value",
          "inline": true
        },
        {
          "name": "Field 2 Title",
          "value": "Field 2 Value",
          "inline": true
        },
        {
          "name": "Field 3 Title",
          "value": "Field 3 Value",
          "inline": false
        }
      ]
    }
  ]
}
```

You can do many things with this resource, if you have the [knowledge](https://discord.com/developers/docs/resources/channel#create-message). Including things like components, role mentions, attachements and so much more with an easy to use script

### Webhook URL
This is also very easy to use just send a [webhook url](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks) and the script will take care of the rest!

### Event Usage Example
![Server](https://img.shields.io/static/v1.svg?label=&message=Server&color=blue)
![Client](https://img.shields.io/static/v1.svg?label=&message=Client&color=green)

``` LUA
    local webhook = "https://discord.com/api/webhooks/.../..."

    local data = {
        content = "This is a message"
        embeds = {
            {
                title = "title",
                color = 12345678899,
                fields = {
                    {
                        name = "Field Title 1",
                        value = "```Field Value 1```",
                        inline = true
                    },
                    {
                        name = "Field Title 2",
                        value = "Field Value 2",
                        inline = false
                    },
                },
                footer = {
                    text = "An Example Footer Text"
                },
                timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }
        }
    }
    TriggerEvent('rp_dWebhook:SendDiscordMessage', data, webhook)
```
