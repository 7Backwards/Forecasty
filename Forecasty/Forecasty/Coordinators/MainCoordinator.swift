//
//  MainCoordinator.swift
//  Forecasty
//
//  Created by Gonçalo Neves on 15/06/2021.
//

import Foundation
import UIKit

class MainCoordinator: CoordinatorProtocol {

    var presentedCoordinator: CoordinatorProtocol?
    var navigationController: UINavigationController
    var networkManager: NetworkManager

    init(navigationController: UINavigationController, networkManager: NetworkManager) {
        self.navigationController = navigationController
        self.networkManager = networkManager
    }

    func start() {

        let homeViewModel = HomeViewModel(coordinator: self)
        let homeViewController = HomeViewController(viewModel: homeViewModel)

        navigationController.pushViewController(homeViewController, animated: true)
    }
}