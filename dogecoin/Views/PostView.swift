//
//  PostView.swift
//  dogecoin
//
//  Created by Zechariah Singh on 24/9/21.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    var body: some View {
        HStack(spacing: 15) {
            PostImageView(post: post)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
            textSection
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

extension PostView {
    private var textSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack(alignment: .top) {
                Text(post.submissionTitle)
                    .bold()
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .font(.footnote)
                
                Text(post.author)
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            Text(post.created.getDateString() ?? "")
                .font(.caption2)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostView(post: dev.post)
                .previewLayout(.sizeThatFits)
            
            PostView(post: dev.post)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
