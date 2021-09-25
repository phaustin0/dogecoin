//
//  PostImageView.swift
//  dogecoin
//
//  Created by Zechariah Singh on 25/9/21.
//

import SwiftUI

struct PostImageView: View {
    @StateObject var vm: PostImageViewModel
    
    init(post: Post) {
        _vm = StateObject(wrappedValue: PostImageViewModel(post: post))
    }
    
    var body: some View {
        if let image = vm.image {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
        } else if vm.isLoading {
            ProgressView()
        } else {
            Image(systemName: "questionmark")
        }
    }
}

struct PostImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostImageView(post: dev.post)
                .previewLayout(.sizeThatFits)
            
            PostImageView(post: dev.post)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
