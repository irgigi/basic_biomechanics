//
//  InfoView.swift
//  Basic_biomechanics


import SwiftUI

struct InfoView: View {
    
    @Binding var titleOn: Bool
    let model: [Post] = Post.make()
   
    var body: some View {
    
        VStack {
            NavigationView {
                List {
                    ForEach(model, id: \.title) { post in
                        NavigationLink(destination: InfoDetails(post: post)) {
                            InfoRow(post: post)
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                }
                .navigationTitle(titleOn ? "Плоскости и оси" : "")
            }
            Image("axes")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 180)
            
        }

    }

}


#Preview {
    InfoView(titleOn: .constant(true))
}
