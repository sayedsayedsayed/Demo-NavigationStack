//
//  FourthView.swift
//  Demo-NavigationStack
//
//  Created by Sayed Zulfikar on 24/08/23.
//

import SwiftUI

struct FourthView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Fourth!")
            Button("Go to 5th Page") {
                router.path.append(.fifthPage)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            Button("Go to 6th Page") {
                router.path.append(.sixthPage)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Fourth View")
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
