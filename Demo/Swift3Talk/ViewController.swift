//
//  ViewController.swift
//  Swift3Talk
//
//  Created by Sabintsev, Arthur on 7/3/16.
//  Copyright © 2016 The Washington Post. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

}

// MARK: SE-0047

private extension ViewController {

    /**
     Defaulting non-Void functions so they warn on unused results
     */
    func demo47() {
        1 + 2 // Throws warning as result is unused
        _ = 1 + 2 // Discards unused warning and silences warning
    }
}

