//
//  PreviewProvider.swift
//  dogecoin
//
//  Created by Zechariah Singh on 24/9/21.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview()
    }
}

struct DeveloperPreview {
    var vm = HomeViewModel()
}
