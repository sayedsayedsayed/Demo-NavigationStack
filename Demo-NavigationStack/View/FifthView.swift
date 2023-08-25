//
//  FifthView.swift
//  Demo-NavigationStack
//
//  Created by Sayed Zulfikar on 24/08/23.
//

import SwiftUI

struct FifthView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Fifth!")
            Button("Go to 6th Page") {
                router.path.append(.sixthPage)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
        }
        .padding()
        .navigationTitle("Fifth View")
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
