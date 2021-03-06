//
//  RacesTableViewController.swift
//  pokedex_fc
//
//  Created by Carlos Villa on 13/11/2017.
//  Copyright © 2017 Carlos Fernando. All rights reserved.
//

import UIKit

class RacesTableViewController: UITableViewController {
    
    var typeIndex: Int!
    var pokedex = PokedexModel()
    var titulo : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = titulo
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pokedex.types[typeIndex].races.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "racesCell", for: indexPath)
        
        let races = pokedex.types[typeIndex].races[indexPath.row]
        // Configure the cell...
        
        
        cell.textLabel?.text = races.name
        cell.detailTextLabel?.text = "\(races.code)"
        cell.imageView?.image = UIImage(named: races.icon)
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRws(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowWiki"{
            if let webVC = segue.destination as? WebViewController{
                if let ip = tableView.indexPathForSelectedRow {
                    webVC.raceName =  pokedex.types[typeIndex].races[ip.row].name
                    
                    
                    let race = pokedex.types[typeIndex].races[ip.row].name
                    
                    webVC.titulo = race
                }
            }
        }
        
    }
    
    
}
