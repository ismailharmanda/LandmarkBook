//
//  ViewController.swift
//  LandmarkBook
//
//  Created by ismail harmanda on 22.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var landmarkNames = [String]()
        landmarkNames.append("Colesseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhenge")
        landmarkNames.append("Taj Mahal")
        landmarkNames.append("Potbelly Hill")
        
        var  landmarkImages = [UIImage]()
        landmarkImages.append(UIImage(imageLiteralResourceName: "collesium"))
        landmarkImages.append(UIImage(imageLiteralResourceName: "gobeklitepe"))
        landmarkImages.append(UIImage(imageLiteralResourceName: "greatwall"))
        landmarkImages.append(UIImage(imageLiteralResourceName: "kremlin"))
        landmarkImages.append(UIImage(imageLiteralResourceName: "stonehenge"))
        landmarkImages.append(UIImage(imageLiteralResourceName: "tajmahal"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = "TableView"
//        content.secondaryText = "Test"
        cell.contentConfiguration = content
        
        return cell
    }


}

