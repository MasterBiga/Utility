//
//  UrlLauncher.swift
//  utility
//
//  Created by Filippo Zazzeroni on 17/12/21.
//

import Foundation

struct UrlLauncher {
    
    static func launchUrl(url: String) {
        if let urlToLaunch = URL(string: url) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(urlToLaunch, options: [:]) { result in
                    print("opened url")
                }
            } else {
               print("do nothing")
            }
        }
    }
}
