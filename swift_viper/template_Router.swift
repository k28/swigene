//
//  {{__model_template__}}Router.swift
//  {{__project_name__}}
//
//  Created by {{__author_name__}} on {{__create_date__}}.
//

import Foundation

protocol {{__model_template__}}Wireframe {
    
}

final class {{__model_template__}}Router {
    
    // 画面遷移のためにViewControllerが必要
    private unowned let viewController: AppViewController
    
    private init(viewController: AppViewController) {
        self.viewController = viewController
    }
    
    static func assembleModels() -> AppViewController {
        let view = {{__model_template__}}ViewController()
        let router = {{__model_template__}}Router(viewController: view)
        
        let presenter = {{__model_template__}}Presenter(view: view, router: router)
        view.presenter = presenter
        
        return view
    }
    
}

extension {{__model_template__}}Router: {{__model_template__}}Wireframe {
    
}
