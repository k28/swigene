//
//  {{__model_template__}}Presenter.swift
//  {{__project_name__}}
//
//  Created by {{__author_name__}} on {{__create_date__}}.
//

import Foundation

protocol {{__model_template__}}PresenterInput {
    
    func onViewWillAppear()
    
}

class {{__model_template__}}Presenter {
    
    private weak var view: {{__model_template__}}ViewInterface?
    private let router: {{__model_template__}}Wireframe
    
    init(view: {{__model_template__}}ViewInterface? = nil, router: {{__model_template__}}Wireframe) {
        self.view = view
        self.router = router
    }
    
}

extension {{__model_template__}}Presenter : {{__model_template__}}PresenterInput {
    
    func onViewWillAppear() {
    }
    
}
