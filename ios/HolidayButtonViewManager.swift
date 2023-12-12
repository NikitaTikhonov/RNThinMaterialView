//
//  HolidayButtonViewManager.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 11.12.2023.
//

import Foundation
import SwiftUI

@objc (HolidayButtonViewManager)
class HolidayButtonViewManager: RCTViewManager {
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func view() -> UIView! {
    return HolidayButtonUIView()
  }
  
}

final class HolidayButtonUIView: UIView {
  let eventEmitter = HolidayGetterEventEmitter.shared
  let props = HolidayButtonProps()
  
  lazy var button = HolidayButton(props: self.props)
  
  lazy var vc = UIHostingController(rootView: button)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    props.onPress = self.onPress
    addSubview(vc.view)
    vc.view.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      vc.view.heightAnchor.constraint(equalTo: heightAnchor),
      vc.view.widthAnchor.constraint(equalTo: widthAnchor),
      vc.view.leadingAnchor.constraint(equalTo: leadingAnchor),
      vc.view.trailingAnchor.constraint(equalTo: trailingAnchor)
    ])
    vc.view.backgroundColor = .clear
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc var text: String = "" {
    didSet {
      props.text = text
    }
  }
  
  private func onPress(date: String) {
    if let eventEmitter = eventEmitter {
      eventEmitter.sendHolidayEvent(withDate: date)
    }
  }
}




