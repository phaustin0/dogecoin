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
    let post = Post(id: "pugia7",
                    submissionURL: "https://i.redd.it/rrsy2ovlbfp71.png",
                    submissionTitle: "@everyone DOGE ON SALE NOW!",
                    permalink: "/r/dogecoin/comments/pugia7/everyone_doge_on_sale_now/",
                    author: "3Domse3",
                    created: "2021-09-24T09:55:10")
    let url = URL(string: "https://i.redd.it/rrsy2ovlbfp71.png")!
}
