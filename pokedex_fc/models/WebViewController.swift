//
//  WebViewController.swift
//  pokedex_fc
//
//  Created by Carlos Villa on 13/11/2017.
//  Copyright © 2017 Carlos Fernando. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController {
    
    var raceName: String!
    var titulo: String!
    
   
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = titulo
        
        var url = "http://es.pokemon.wikia.com"
        if let path = "wiki/\(raceName.description)".addingPercentEncoding(withAllowedCharacters: .urlPathAllowed){
            url = "\(url)/\(path)"
        }
        let pag = URL(string: url)
        let request = URLRequest(url: pag!)
        webView.load(request)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        webView.goBack()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
