//
//  ViewController.swift
//  3
//
//  Created by 李芫萱 on 2024/2/4.
//

import UIKit

class ViewController: UIViewController {

    struct Station: Codable {
        let stationID: String
        let stationName: String
        let stationAddress: String
    }
    
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchStationData()
    }
    
    func fetchStationData() {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.waitsForConnectivity = true
        
        let session = URLSession(configuration: configuration)
        
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        
        let task = session.dataTask(with: url) {
            
            (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
              return
            }
    
            
            if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as? String {
                print(result)
            }
            
            do {
                let decoder = JSONDecoder()
                let station = try decoder.decode(Station.self, from: data)
                
                DispatchQueue.main.async {
                    self.stationIDLabel.text = station.stationID
                    self.stationNameLabel.text = station.stationName
                    self.addressLabel.text = station.stationAddress
                    print(station)
                }
            } catch {
                print("Error info: \(error)")
            }
        }
        
        task.resume()
    }
}

 
