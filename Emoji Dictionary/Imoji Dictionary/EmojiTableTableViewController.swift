//
//  EmojiTableTableViewController.swift
//  Imoji Dictionary
//
//  Created by student on 03/04/24.
//

import UIKit

class EmojiTableTableViewController: UITableViewController {
    
    @IBOutlet weak var EmojiData: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    @IBOutlet weak var emojiName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath) as! EmojiTableViewCell
        
        var emoji = emojis[indexPath.row]
        
        cell.update(emoji: emoji)
        
//        var content = cell.defaultContentConfiguration()
//        content.text = "\(emoji.Emoji) - \(emoji.name)"
//        content.secondaryText = emoji.description
//        cell.contentConfiguration = content
//        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        print(emoji.usage)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        //tableView.deselectRow(at: indexPath, animated: true)
        print(emoji.Emoji)
    }
    
//    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
//        let tableViewEditing = tableView.isEditing
//        tableView.setEditing(!tableViewEditing, animated: true)
//    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    //to change editing style
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
    }

    // Override to support editing the table view.
    //delete or add particular row
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
   
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }


    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedRow = emojis.remove(at: fromIndexPath.row)
        emojis.insert(movedRow,at: to.row)
    }
    
    @IBAction func unwindToEmoji(unwindSegue: UIStoryboardSegue){
        guard unwindSegue.identifier == "SaveUnwind", let source = unwindSegue.source as? AddEditEmojiTableViewController, let emoji = source.emoji else{
            return
        }
        if let index = tableView.indexPathForSelectedRow{
            emojis[index.row] = emoji
            tableView.reloadRows(at: [index], with: .none)
            
        }else{
            let indexPath = IndexPath(row: emojis.count, section: 0)
            emojis.append(emoji)
            tableView.insertRows(at: [indexPath], with: .none)
          
        }
        tableView.reloadData()
    }
    
   
    @IBSegueAction func addEditEmoji(_ coder: NSCoder, sender: Any?) -> AddEditEmojiTableViewController? {
        if let cell = sender as? EmojiTableViewCell, let indexPath = tableView.indexPath(for: cell){
            let emojiToEdit = emojis[indexPath.row]
            return AddEditEmojiTableViewController(coder: coder, emoji: emojiToEdit)
        }
        else{
            return AddEditEmojiTableViewController(coder: coder, emoji: nil)
        }
        
    }
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
