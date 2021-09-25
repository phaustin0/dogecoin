//
//  PostImageViewModel.swift
//  dogecoin
//
//  Created by Zechariah Singh on 25/9/21.
//

import SwiftUI
import Combine

class PostImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = true
    
    private let postImageService: PostImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(post: Post) {
        self.postImageService = PostImageService(post: post)
        addSubscribers()
        self.isLoading = true
    }
    
    private func addSubscribers() {
        postImageService.$image
            .sink { [weak self] returnedImage in
                guard let self = self else { return }
                self.image = returnedImage
            }
            .store(in: &cancellables)
    }
}
