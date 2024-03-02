//
//  ThinMaterialViewManager.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 13.12.2023.
//

import Foundation
import SwiftUI

enum MaterialType: String {
  case ultrathin
  case thin
  case regular
  case thick
  case ultrathick
  // Add other material types if needed
  
  var material: Material {
    switch self {
    case .ultrathin: return .ultraThinMaterial
    case .thin: return .thinMaterial
    case .thick: return .thickMaterial
    case .ultrathick: return .ultraThick
    case .regular: return .regularMaterial
    }
  }
}

import Foundation
import SwiftUI

@objc(ThinMaterialViewManager)
final class ThinMaterialViewManager: RCTViewManager {
  private var thinMaterialView: ThinMaterialUIView!
  
  override func view() -> UIView! {
    thinMaterialView = ThinMaterialUIView()
    return thinMaterialView
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}


import SwiftUI
import UIKit

final class ThinMaterialUIView: UIView {
  let props = MaterialState(background: .thinMaterial, content: AnyView(EmptyView()), enabled: true)
  private lazy var container = ThinMaterialView(props: self.props)
  private lazy var vc = UIHostingController(rootView: container)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(vc.view)
    vc.view.translatesAutoresizingMaskIntoConstraints = false
    vc.view.backgroundColor = .clear
    
    NSLayoutConstraint.activate([
      vc.view.topAnchor.constraint(equalTo: topAnchor),
      vc.view.bottomAnchor.constraint(equalTo: bottomAnchor),
      vc.view.leadingAnchor.constraint(equalTo: leadingAnchor),
      vc.view.trailingAnchor.constraint(equalTo: trailingAnchor)
    ])
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc var material: String = "" {
    didSet {
      if let newMaterial = MaterialType(rawValue: material) {
        self.props.background = newMaterial.material
      }
    }
  }
  
  @objc var enabled: Bool = true {
    didSet {
      self.props.enabled = enabled
      updateSwiftUIView()
    }
  }
  
  func updateSwiftUIView() {
    DispatchQueue.main.async { [weak self] in
      guard let self = self else { return }
      self.vc.rootView = ThinMaterialView(props: self.props)
    }
  }
}
