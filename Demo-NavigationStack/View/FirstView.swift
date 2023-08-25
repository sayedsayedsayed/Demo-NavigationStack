//
//  FirstView.swift
//  Demo-NavigationStack
//
//  Created by Sayed Zulfikar on 24/08/23.
//

import SwiftUI

struct FirstView: View {
    @StateObject var router = Router()

    var body: some View {
        NavigationStack(path: $router.path) {
            VStack {
                Text("First!")
                
                Button("Go to 2nd Page") {
                    router.path.append(.secondPage)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("First View")
            .navigationDestination(for: Destination.self) { destination in
                ViewFactory.viewForDestination(destination)
            }
        }
        .environmentObject(router)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
