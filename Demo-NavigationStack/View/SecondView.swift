//
//  SecondView.swift
//  Demo-NavigationStack
//
//  Created by Sayed Zulfikar on 24/08/23.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Second!")
            Button("Go to 3rd Page") {
                router.path.append(.thirdPage)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
        }
        .padding()
        .navigationTitle("Second View")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
