//
//  HolidayGetterButton.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 11.12.2023.
//

//
//  DatePrinter.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 11.12.2023.
//

import SwiftUI

//
//  MyTextView.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 07.12.2023.
//

import SwiftUI

struct HolidayButton: View {
  @StateObject var props: HolidayButtonProps
  
  var body: some View {
    VStack {
      Text("Know some holiday")
        .backgroundStyle(.thinMaterial)
      Button(action: {
        let date = printRandomGermanHoliday2022()
        guard let onPress = props.onPress else {
          return
        }
        onPress(date)
      }, label: {
        Text(props.text)
      })
    }.background(.thinMaterial)
  }
}

#Preview {
  HolidayButton(props: HolidayButtonProps())
}
