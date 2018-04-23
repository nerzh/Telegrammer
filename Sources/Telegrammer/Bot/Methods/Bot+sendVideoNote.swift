// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// As of v.4.0, Telegram clients support rounded square mp4 videos of up to 1 minute long. Use this method to send video messages. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - video_note: Video note to send. Pass a file_id as String to send a video note that exists on the Telegram servers (recommended) or upload a new video using multipart/form-data. More info on Sending Files ». Sending video notes by a URL is currently unsupported
    ///     - duration: Duration of sent video in seconds
    ///     - length: Video width and height
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
    /// - Returns: Future<Message>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#sendvideonote>

    public struct SendVideoNoteParams: MultipartEncodable {
        var chatId: ChatId
        var videoNote: FileInfo
        var duration: Int?
        var length: Int?
        var disableNotification: Bool?
        var replyToMessageId: Int?
        var replyMarkup: ReplyMarkup?

        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case videoNote = "video_note"
            case duration = "duration"
            case length = "length"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, videoNote: FileInfo, duration: Int? = nil, length: Int? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.videoNote = videoNote
            self.duration = duration
            self.length = length
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    public func sendVideoNote(params: SendVideoNoteParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<Message>>
        response = try client.respond(endpoint: "sendVideoNote", body: body, headers: headers)
        return response.flatMap(to: Message.self) { try self.wrap($0) }
    }
}