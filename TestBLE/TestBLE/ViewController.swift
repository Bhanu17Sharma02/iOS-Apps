//
//  ViewController.swift
//  TestBLE
//
//  Created by Bhanu Sharma on 29/09/23.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController, CBCentralManagerDelegate {

    
       var manager: CBCentralManager!
       var items = [String: [String: Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.manager = CBCentralManager(delegate: self, queue: nil)
   
    }


    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            central.scanForPeripherals(withServices: nil, options: nil)
           print("on")
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
      guard peripheral.name != nil else {return}
      
        print((peripheral.name ?? "") as String)
    }
    
}

