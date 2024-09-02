//
//  AFButton.swift
//  AppFrameworks
//
//  Created by Hai Ng on 9/2/24.
//

import Foundation
import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .frame(width: 250, height: 50)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(15)
    }
}

struct AFbutton_Preivews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Learn More")
    }
}
