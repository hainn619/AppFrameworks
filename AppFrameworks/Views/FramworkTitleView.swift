//
//  FramworkTitleView.swift
//  AppFrameworks
//
//  Created by Hai Ng on 9/2/24.
//

import Foundation
import SwiftUI

struct FramworkTitleView: View {
    let framework : Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}
#Preview {
    FramworkTitleView(framework: MockData.sampleFramework)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
