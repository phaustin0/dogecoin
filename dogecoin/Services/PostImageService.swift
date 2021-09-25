//
//  PostImageService.swift
//  dogecoin
//
//  Created by Zechariah Singh on 25/9/21.
//

import SwiftUI
import Combine

class PostImageService {
    @Published var image: UIImage? = nil
    private var imageSubscription: AnyCancellable?
    
    init(post: Post) {
        downloadImage(post: post)
    }
    
    private func downloadImage(post: Post) {
        guard let url = URL(string: post.submissionURL) else { return }
        imageSubscription = NetworkingManager.download(url: url)
            .tryMap { data -> UIImage? in
                return UIImage(data: data)
            }
            .sink(receiveCompletion: NetworkingManager.handleCompletion) { [weak self] returnedImage in
                guard
                    let self = self,
                    let downloadedImage = returnedImage
                else { return }
                self.image = downloadedImage
                self.imageSubscription?.cancel()
            }
    }
}
