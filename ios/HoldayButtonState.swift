//
//  HoldayButtonState.swift
//  TodoListNative
//
//  Created by Nikita Tikhonov on 12.12.2023.
//

import Foundation

final class HolidayButtonProps: ObservableObject {
    @Published var text: String = "Nikita"
    @Published var onPress: ((String) -> Void)?
}
