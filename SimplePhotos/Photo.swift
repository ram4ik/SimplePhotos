//
//  Photo.swift
//  SimplePhotos
//
//  Created by Ramill Ibragimov on 07.09.2023.
//

import Foundation

struct Photo: Codable, Hashable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
