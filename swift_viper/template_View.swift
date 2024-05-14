//
//  {{__model_template__}}View.swift
//  {{__project_name__}}
//
//  Created by {{__author_name__}} on {{__create_date__}}.
//

import SwiftUI

struct {{__model_template__}}View: View {
    
    @ObservedObject private var viewModel: {{__model_template__}}ViewModel
    
    init(viewModel: {{__model_template__}}ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    {{__model_template__}}View(viewModel: {{__model_template__}}ViewModel.previewModel())
}
