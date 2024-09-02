//
//  ContentView.swift
//  AppFrameworks
//
//  Created by Hai Ng on 9/1/24.
//

import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
 
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FramworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
            .navigationDestination(for: Framework.self) {
                framework in DetailView(framework: framework)
            }
            
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


