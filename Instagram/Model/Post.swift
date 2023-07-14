//
//  Post.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 13/07/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    let user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I love eat tacos",
              likes: 2,
              imageUrl: "margot", timestamp: Date(), user: User.MOCK_USERS[0]
             ),
        
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I love eat pizza",
              likes: 12,
              imageUrl: "dwayne", timestamp: Date(), user: User.MOCK_USERS[1]
             ),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "I like go to the gym",
                  likes: 142,
                  imageUrl: "alexandra", timestamp: Date(), user: User.MOCK_USERS[2]
                 ),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "I used to do exercise on saturdays",
                  likes: 312,
                  imageUrl: "angelina", timestamp: Date(), user: User.MOCK_USERS[3]
                 ),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "I love myself, I am the best!",
                  likes: 725,
                  imageUrl: "tom", timestamp: Date(), user: User.MOCK_USERS[4]
                 ),
        
            .init(id: NSUUID().uuidString,
                  ownerUid: NSUUID().uuidString,
                  caption: "I love eat pizza",
                  likes: 142,
                  imageUrl: "jennifer", timestamp: Date(), user: User.MOCK_USERS[5]
                 ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like watch movies on Netflix.",
              likes: 92,
              imageUrl: "jenniferl", timestamp: Date(), user: User.MOCK_USERS[6]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like watch movies on Netflix.",
              likes: 92,
              imageUrl: "salma", timestamp: Date(), user: User.MOCK_USERS[7]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like the music rap and wathc series on Netflix.",
              likes: 982,
              imageUrl: "will", timestamp: Date(), user: User.MOCK_USERS[8]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like create mobile apps",
              likes: 982,
              imageUrl: "xcode", timestamp: Date(), user: User.MOCK_USERS[9]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like create mobile apps",
              likes: 982,
              imageUrl: "apps", timestamp: Date(), user: User.MOCK_USERS[9]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like create mobile apps",
              likes: 982,
              imageUrl: "insta", timestamp: Date(), user: User.MOCK_USERS[9]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like create mobile apps",
              likes: 982,
              imageUrl: "alonso", timestamp: Date(), user: User.MOCK_USERS[9]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "I like create mobile apps",
              likes: 982,
              imageUrl: "marcoalonso", timestamp: Date(), user: User.MOCK_USERS[9]
             ),
    ]
}
