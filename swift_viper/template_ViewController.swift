//
//  {{__model_template__}}ViewController.swift
//  {{__project_name__}}
//
//  Created by {{__author_name__}} on {{__create_date__}}.
//

import UIKit
import SwiftUI

protocol {{__model_template__}}ViewInterface: AnyObject {
    
}

class {{__model_template__}}ViewController: AppViewController {
    
    private let viewModel = {{__model_template__}}ViewModel()
    var presenter: {{__model_template__}}PresenterInput!
    
    private lazy var hostingController: UIHostingController = {
        UIHostingController(rootView: {{__model_template__}}View(viewModel: viewModel))
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedSwiftUIView(self.hostingController)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.onViewWillAppear()
    }
    
}

extension {{__model_template__}}ViewController: {{__model_template__}}ViewInterface {
    
}
