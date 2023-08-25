//
//  ThirdView.swift
//  Demo-NavigationStack
//
//  Created by Sayed Zulfikar on 24/08/23.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Third!")
            Button("Go to 4th Page") {
                router.path.append(.fourthPage)
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
        }
        .padding()
        .navigationTitle("Third View")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
