//
//  Topic.swift
//  CoursesApp
//
//  Created by Ramill Ibragimov on 27.06.2021.
//

import Foundation
import SwiftUI

enum Topic: String, CaseIterable {
    case swift = "Swift"
    case swiftUI = "SwiftUI"
    case iOS = "iOS"
    case objC = "Objective C"
    case uiKit = "UIKit"
    case serverSwift = "Server Side Swift"
    case ml = "Machine Learning"
    case web = "Web"
    
    func backColor() -> Color {
        switch self {
        case .swift:
            return .pink
        case .swiftUI:
            return .orange
        case .iOS:
            return .blue
        case .objC:
            return .purple
        case .uiKit:
            return .green
        case .serverSwift:
            return .red
        case .ml:
            return .yellow
        case .web:
            return .gray
        }
    }
}
