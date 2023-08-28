//
//  Models.swift
//  instagram
//
//  Created by Roman Yang on 2023/8/28.
//

import Foundation

enum Gender{
    case male, female, other
}

struct User{
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount{
    let followers: Int
    let following: Int
    let posts: Int
}

public enum UserPostType{
    case photo, video
}

/// Represents a user post
public struct UserPost{
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL // either video url or full resolution photo
    let caption: String?
    let likeCount: [PostLikes]
    let comments: [PostComment]
    let creatededDate: Date
    let taggedUsers: [String]
}

struct PostLikes {
    let username: String
    let postIdentifier: String
}

struct CommentLike{
    let username: String
    let postidentifier: String
}

struct PostComment{
    let identifier: String
    let username: String
    let text: String
    let createDate: Date
    let likes: [CommentLike]
}
