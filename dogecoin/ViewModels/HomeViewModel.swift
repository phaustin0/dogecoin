//
//  HomeViewModel.swift
//  dogecoin
//
//  Created by Zechariah Singh on 24/9/21.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var posts: [Post] = []
    private var postDownloadService = DownloadService<AllData>()
    private var postSubscription: AnyCancellable?
    
    init() {
        getPosts()
    }
    
    private func getPosts() {
        guard let url = URL(string: "https://api.doge-meme.lol/v1/memes/?skip=0&limit=100") else { return }
        
        postSubscription = postDownloadService.downloadAndDecode(url: url) { [weak self] returnedAllData in
            guard let self = self else { return }
            self.posts = returnedAllData.data
            self.postSubscription?.cancel()
        }
    }
}
