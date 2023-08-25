//
//  RouterViewModel.swift
//  Demo-NavigationStack
//
//  Created by Sayed Zulfikar on 24/08/23.
//

import SwiftUI

enum Destination {
    case firstPage
    case secondPage
    case thirdPage
    case fourthPage
    case fifthPage
    case sixthPage
}

class Router: ObservableObject {
    @Published var path: [Destination] = []
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func popToPage(page: Destination){
        if let index = path.firstIndex(of: page) {
            path.removeLast(path.count - (index + 1))
        } else {
            print("Value not found in the array")
        }
    }
    
}

class ViewFactory {
    @ViewBuilder
    static func viewForDestination(_ destination: Destination) -> some View {
        switch destination {
        case .firstPage:
            FirstView()
        case .secondPage:
            SecondView()
        case .thirdPage:
            ThirdView()
        case .fourthPage:
            FourthView()
        case .fifthPage:
            FifthView()
        case .sixthPage:
            SixthView()
        }
    }
}

