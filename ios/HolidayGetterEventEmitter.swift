//
//  HolidayGetterEventEmitter.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 11.12.2023.
//

@objc(HolidayGetterEventEmitter)
class HolidayGetterEventEmitter: RCTEventEmitter {
  
  public static var shared: HolidayGetterEventEmitter?

    
    override init() {
        super.init()
        HolidayGetterEventEmitter.shared = self
    }

  @objc override func supportedEvents() -> [String]! {
        return ["onPress"]
    }

    // Function to send events
   func sendHolidayEvent(withDate date: String) {
        sendEvent(withName: "onPress", body: ["date": date])
    }

    override static func requiresMainQueueSetup() -> Bool {
        return true
    }

}

