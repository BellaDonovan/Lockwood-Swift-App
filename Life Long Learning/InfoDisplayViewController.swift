//
//  InfoDisplayViewController.swift
//  Life Long Learning
//
//  Created by Swift Team on 4/20/22.
//

import UIKit
import WebKit

class InfoDisplayViewController: UIViewController {
    var url_ = ""
    
    @IBOutlet weak var URLlabel: UILabel!
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
        print(url_)
        loadPage(url: url_)
    }
    
    func loadPage(url: String) {

        let urlObj = URL(string: url_)
        if let u = urlObj {
            let request = URLRequest(url: u)
            webview.load(request)
        }
    }
    //

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
