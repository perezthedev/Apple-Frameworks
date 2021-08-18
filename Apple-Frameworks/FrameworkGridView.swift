//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by thepercussivedev on 8/16/21.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())] // dictates # of columns
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks) { framework in
                FrameworkTitleView(name: framework.name, imageName: framework.imageName)
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    
    let name: String
    let imageName: String
    
    var body: some View{
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
    }
}
