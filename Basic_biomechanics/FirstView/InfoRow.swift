//
//  InfoRow.swift
//  Basic_biomechanics


import SwiftUI

struct InfoRow: View {
    let post: Post
    
    var body: some View {
        HStack {
            if let image = post.image {
                Image(uiImage: image)
                    .resizable()
                    .frame(width: 100, height: 100)
            }

            
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                Text(post.subTitle)
                    .font(.subheadline)
            }
        }

    }
}


