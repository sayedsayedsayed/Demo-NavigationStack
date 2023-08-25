//
//  SixthView.swift
//  Demo-NavigationStack
//
//  Created by Sayed Zulfikar on 24/08/23.
//

import SwiftUI

struct SixthView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Sixth!")
            
            Button("Back to root") {
                router.popToRoot()
            }
            .buttonStyle(.borderedProminent)
            
            Button("Back to 3rd page") {
                router.popToPage(page: .thirdPage)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Sixth View")
    }
}

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}
