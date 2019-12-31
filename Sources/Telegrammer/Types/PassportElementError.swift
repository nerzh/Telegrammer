// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents an error in the Telegram Passport element which was submitted that should be resolved by the user. It should be one of:
 PassportElementErrorDataField
 PassportElementErrorFrontSide
 PassportElementErrorReverseSide
 PassportElementErrorSelfie
 PassportElementErrorFile
 PassportElementErrorFiles
 
 SeeAlso Telegram Bot API Reference:
 [PassportElementError](https://core.telegram.org/bots/api#passportelementerror)
 */
public enum PassportElementError: Codable {
    case dataField(PassportElementErrorDataField)
    case file(PassportElementErrorFile)
    case files(PassportElementErrorFiles)
    case frontSide(PassportElementErrorFrontSide)
    case reverseSide(PassportElementErrorReverseSide)
    case selfie(PassportElementErrorSelfie)
    case unknown

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .dataField(let value):
            try container.encode(value)
        case .file(let value):
            try container.encode(value)
        case .files(let value):
            try container.encode(value)
        case .frontSide(let value):
            try container.encode(value)
        case .reverseSide(let value):
            try container.encode(value)
        case .selfie(let value):
            try container.encode(value)
        case .unknown:
            try container.encodeNil()
        }
    }

    public init(from decoder: Decoder) throws {
        if let value = try? decoder.singleValueContainer().decode(PassportElementErrorDataField.self) {
            self = .dataField(value)
            return
        }
        if let value = try? decoder.singleValueContainer().decode(PassportElementErrorFile.self) {
            self = .file(value)
            return
        }
        if let value = try? decoder.singleValueContainer().decode(PassportElementErrorFiles.self) {
            self = .files(value)
            return
        }
        if let value = try? decoder.singleValueContainer().decode(PassportElementErrorFrontSide.self) {
            self = .frontSide(value)
            return
        }
        if let value = try? decoder.singleValueContainer().decode(PassportElementErrorReverseSide.self) {
            self = .reverseSide(value)
            return
        }
        if let value = try? decoder.singleValueContainer().decode(PassportElementErrorSelfie.self) {
            self = .selfie(value)
            return
        }
        self = .unknown
    }

}
