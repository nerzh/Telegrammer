//
//  CommandHandler.swift
//  Telegrammer
//
//  Created by Givi Pataridze on 21.04.2018.
//

import HTTP

public class CommandHandler: Handler {

    let commands: Set<String>
    let callback: HandlerCallback 
    let filters: Filters
    let editedUpdates: Bool
    
    public init(commands: [String],
                filters: Filters = Filters.command,
                callback: @escaping HandlerCallback,
                editedUpdates: Bool = false) {
        self.commands = Set(commands)
        self.callback = callback
        self.filters = filters
        self.editedUpdates = editedUpdates
    }
    
    public func check(update: Update) -> Bool {
        if editedUpdates,
            update.editedMessage != nil ||
                update.editedChannelPost != nil {
            return true
        }
            
        guard let message = update.message else { return false }
        guard let text = message.text else { return false }
        guard filters.check(message) else { return false }
        guard let entities = message.entities else { return false }
        let types = entities.compactMap { (entity) -> String? in
            let nsRange = NSRange(location: entity.offset, length: entity.length)
            guard let range = Range(nsRange, in: text) else { return nil }
            return String(text[range])
        }
        return !commands.intersection(types).isEmpty
    }
    
    public func handle(update: Update, dispatcher: Dispatcher) {
        callback(update, dispatcher.updateQueue, dispatcher.jobQueue)
    }
}