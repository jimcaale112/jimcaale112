//
//  BleService.swift
//  BLTest
//
//  Created by mohamed Jimale on 12/9/21.
//

import Foundation
import Foundation
import CoreBluetooth
import os


// MARK: - BleService class
//
internal final class BleService: NSObject {
    
    //Add a private property for the central manager:
    private var centralManager: CBCentralManager?
    //Add a private property for the initialisation options:
    private let initOptions = [CBCentralManagerOptionShowPowerAlertKey : NSNumber(value: true)]
    
    override init() {
        super.init()
        centralManager = CBCentralManager(delegate: self,
                                                  queue: DispatchQueue(label: "com.jimale.BLTest",
                                                  qos: .userInitiated),
                                                                                 options: initOptions)

    }
    
    // MARK: - Public (Internal) API
        //
        func attachPeripheral(suuid: CBUUID) {
            //
        }
        
        func read(suuid: CBUUID, cuuid: CBUUID) {
            //
        }
        
        func write(suuid: CBUUID, cuuid: CBUUID, data: Data, response: Bool) {
            //
        }
        
        func setNotify(suuid: CBUUID, cuuid: CBUUID, state: Bool) {
            //
        }
        
        func readRssi() {
            //
        }

    
}



//Add extensions for CBCentralManagerDelegate and CBPeripheralDelegate at the end of the file, after the BleService class:

// MARK: - CBCentralManagerDelegate
//
 extension BleService: CBCentralManagerDelegate {
    
        func centralManagerDidUpdateState(_ central: CBCentralManager) {
        os_log("Central Manager state: %s", log: Log.ble, type: .info,
               // that print out state of managment
            central.state.description)
    }
 }

// MARK: - CBPeripheralDelegate

extension BleService: CBPeripheralDelegate {
    //
}
