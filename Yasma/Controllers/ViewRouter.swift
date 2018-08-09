//
//  ViewRouter.swift
//  
//
//  Created by kanagasabapathy on 09/08/18.
//

import Foundation

protocol ViewRouter {
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

extension ViewRouter{
    func prepare(for segue: UIStoryboardSegue, sender: Any?) { }
}
