//
//  InfoDetails.swift
//  Basic_biomechanics


import SwiftUI

struct InfoDetails: View {
    let post: Post
    var body: some View {
        
        ScrollView {
            VStack {
                Text(post.title)
                    .font(.headline)
                
                if let image = post.image {
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .aspectRatio(contentMode: .fit)
                }
                
                Text(post.description)
                    .padding()
                
                HStack {
                    if let image = post.image_move {
                        Image(uiImage: image)
                            .resizable()
                            .frame(width: 350, height: 500)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                
            }
            
        }
        

    }
}


