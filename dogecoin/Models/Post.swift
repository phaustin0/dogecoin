//
//  Post.swift
//  dogecoin
//
//  Created by Zechariah Singh on 24/9/21.
//

import Foundation

struct AllData: Codable {
    let data: [Post]?
}

// URL -> https://api.doge-meme.lol/v1/memes/?skip=0&limit=100
struct Post: Codable, Identifiable {
    let id: String?
    let submissionURL: String?
    let submissionTitle, permalink, author, created: String?

    enum CodingKeys: String, CodingKey {
        case id = "submission_id"
        case submissionURL = "submission_url"
        case submissionTitle = "submission_title"
        case permalink, author, created
    }
}
