//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by thepercussivedev on 8/20/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
}
