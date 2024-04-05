//
//  imoji.swift
//  Imoji Dictionary
//
//  Created by student on 03/04/24.
//

import Foundation

struct Emoji {
    var Emoji: String
    var name: String
    var description: String
    var usage: String
}


var emojis: [Emoji] = [
    Emoji(Emoji: "😀", name: "Grinning Face",description: "A typical smiley face.",usage: "happiness"),
    Emoji(Emoji: "😕", name: "Confused Face",description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
    Emoji(Emoji: "😍", name: "Heart Eyes",description: "A smiley face with hearts for eyes.",usage: "love of something;attractive"),
    Emoji(Emoji: "🧑‍💻", name: "Developer",
   description: "A person working on a MacBook (probably using Xcode to write iOS apps in Swift).", usage: "apps, software,programming"),
    Emoji(Emoji: "🐢", name: "Turtle", description: "A cute turtle.", usage: "something slow"),
    Emoji(Emoji: "🐘", name: "Elephant", description:
   "A gray elephant.", usage: "good memory"),
    Emoji(Emoji: "🍝", name: "Spaghetti",description: "A plate of spaghetti.", usage: "spaghetti"),
    Emoji(Emoji: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
    Emoji(Emoji: "⛺️", name: "Tent", description: "A small tent.", usage: "camping"),
    Emoji(Emoji: "📚", name: "Stack of Books",
   description: "Three colored books stacked on each other.",usage: "homework, studying"),
    Emoji(Emoji: "💔", name: "Broken Heart",description: "A red, broken heart.", usage: "extreme sadness"), 
    Emoji(Emoji: "💤", name: "Snore",description:"Three blue \'z\'s.", usage: "tired, sleepiness"),
    Emoji(Emoji: "🏁", name: "Checkered Flag",description: "A black-and-white checkered flag.", usage:
   "completion")
]




