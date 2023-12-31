//
//  PhotoView.swift
//  SimplePhotos
//
//  Created by Ramill Ibragimov on 07.09.2023.
//

import SwiftUI

struct PhotoView: View {
    var photoData: Photo
    
    @State private var isOver = false
    
    var body: some View {
        Link(destination: URL(string: photoData.url)!) {
            ZStack(alignment: .bottom) {
                AsyncImage(url: URL(string: photoData.thumbnailUrl)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }.frame(width: 200, height: 200)
                
                if isOver {
                    Text(photoData.title)
                        .padding(5)
                        .foregroundColor(.black)
                        .frame(width: 200)
                        .lineLimit(2)
                }
            }
            .onHover { isOver in
                self.isOver = isOver
            }
        }
    }
}

struct PhotoView_Previews_Long: PreviewProvider {
    static var previews: some View {
        PhotoView(photoData: Photo(
            albumId: 1,
            id: 1,
            title: "short",
            url: "https://via.placeholder.com/600/92c952",
            thumbnailUrl: "https://via.placeholder.com/200/92c952"))
    }
}

struct PhotoView_Previews_Short: PreviewProvider {
    static var previews: some View {
        PhotoView(photoData: Photo(
            albumId: 1,
            id: 1,
            title: "officia delectus consequatur vero aut veniam",
            url: "https://via.placeholder.com/160/56a8c2",
            thumbnailUrl: "https://via.placeholder.com/150/56a8c2"))
    }
}
