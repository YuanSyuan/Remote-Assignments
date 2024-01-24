//
//  ViewController.swift
//  5
//
//  Created by 李芫萱 on 2024/1/21.
//

import UIKit



class ViewController: UIViewController {
    
    let randomText = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.", "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ", "looked up one of the more obscure Latin words, consectetur", "from a Lorem Ipsum passage, and going through the cities of the word", "This book is a treatise on the theory of ethics, very popular during the.", "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."]
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .cyan, .purple]
    
    @IBOutlet weak var randomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        updateRandomTextAndBackground()
    }
    
    func updateRandomTextAndBackground(){
      if let randomIndex = randomText.indices.randomElement() {
            randomLabel.text = randomText[randomIndex]
            view.backgroundColor = colors[randomIndex]
        }
    }
}
