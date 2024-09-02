//
//  DetailView.swift
//  AppFrameworks
//
//  Created by Hai Ng on 9/2/24.
//

import Foundation
import SwiftUI

struct DetailView: View {
    var framework: Framework
 
    @State var isShowingSafariView = false
    var body: some View {
        
        VStack {
            Spacer()
            FramworkTitleView(framework:framework)
            Text(framework.description)
                .font(.body).padding()
            Spacer()
            Button{
                isShowingSafariView = true
                
            }label: {
               AFButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
    }
}

struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
