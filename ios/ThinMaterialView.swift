//
//  ThinMaterialView.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 13.12.2023.
//

import SwiftUI

struct ThinMaterialView: View {
  @StateObject var props: MaterialState
  
  var body: some View {
    props.content
      .padding()
      .background(props.background)
      .cornerRadius(10)
      .ignoresSafeArea(.all)
  }
}


#Preview {
  ThinMaterialView(props: MaterialState(background: .thinMaterial, content:AnyView(Text("Hello")), enabled: true))
}
