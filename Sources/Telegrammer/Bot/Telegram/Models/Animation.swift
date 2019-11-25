// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents an animation file (GIF or H.264/MPEG-4 AVC video without sound).

 SeeAlso Telegram Bot API Reference:
 [Animation](https://core.telegram.org/bots/api#animation)
 */
public final class Animation: Codable {

    /// Custom keys for coding/decoding `Animation` struct
    enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
        case width = "width"
        case height = "height"
        case duration = "duration"
        case thumb = "thumb"
        case fileName = "file_name"
        case mimeType = "mime_type"
        case fileSize = "file_size"
    }

    /// Identifier for this file
    public var fileId: String

    /// Video width as defined by sender
    public var width: Int

    /// Video height as defined by sender
    public var height: Int

    /// Duration of the video in seconds as defined by sender
    public var duration: Int

    /// Optional. Animation thumbnail as defined by sender
    public var thumb: PhotoSize?

    /// Optional. Original animation filename as defined by sender
    public var fileName: String?

    /// Optional. MIME type of the file as defined by sender
    public var mimeType: String?

    /// Optional. File size
    public var fileSize: Int?


    public init (fileId: String, width: Int, height: Int, duration: Int, thumb: PhotoSize? = nil, fileName: String? = nil, mimeType: String? = nil, fileSize: Int? = nil) {
        self.fileId = fileId
        self.width = width
        self.height = height
        self.duration = duration
        self.thumb = thumb
        self.fileName = fileName
        self.mimeType = mimeType
        self.fileSize = fileSize
    }
}
