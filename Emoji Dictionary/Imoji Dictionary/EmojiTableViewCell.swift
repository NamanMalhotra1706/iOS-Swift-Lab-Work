//
//  EmojiTableViewCell.swift
//  Imoji Dictionary
//
//  Created by student on 05/04/24.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiDescription: UILabel!
    @IBOutlet weak var emojiName: UILabel!
    @IBOutlet weak var emojiSymbol: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func update(emoji: Emoji){
        emojiSymbol.text = emoji.Emoji
        emojiName.text = emoji.name
        emojiDescription.text = emoji.description
        
    }
}
