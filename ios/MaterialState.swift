//
//  MaterialProps.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 13.12.2023.
//

import Foundation
import SwiftUI

final class MaterialState: ObservableObject {
  @Published var background: Material
  @Published var content: AnyView
  @Published var enabled: Bool
  
  init(background: Material, content: AnyView, enabled: Bool) {
    self.background = background
    self.content = content
    self.enabled = enabled
  }
}
