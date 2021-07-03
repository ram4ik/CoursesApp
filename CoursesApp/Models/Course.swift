//
//  Course.swift
//  CoursesApp
//
//  Created by ramil on 29.06.2021.
//

import Foundation

struct Course: Identifiable {
    let id: String
    let courseName: String
    let isBestSeller: Bool
    let topic: Topic
    let author: String
    let detail: String
    let courseImage: String
    let promoVideo: String
    let lesson: [Lesson]
    let numberOfStudents: String
    let rating: String
    let totalLength: String
    let originalPrice: String
    let discountedPrice: String
}

extension Course {
    static func sampleCourses() -> [Course] {
        [
        Course(id: "1", courseName: "courseName", isBestSeller: true, topic: .iOS, author: "author", detail: "detail", courseImage: "earth", promoVideo: "sample", lesson: Lesson.sampleLesson(), numberOfStudents: "5k", rating: "rating", totalLength: "totalLength", originalPrice: "originalPrice", discountedPrice: "discountedPrice"),
            Course(id: "2", courseName: "courseName", isBestSeller: true, topic: .serverSwift, author: "author", detail: "detail", courseImage: "earth", promoVideo: "sample", lesson: Lesson.sampleLesson(), numberOfStudents: "5k", rating: "rating", totalLength: "totalLength", originalPrice: "originalPrice", discountedPrice: "discountedPrice"),
            Course(id: "3", courseName: "courseName", isBestSeller: true, topic: .objC, author: "author", detail: "detail", courseImage: "earth", promoVideo: "sample", lesson: Lesson.sampleLesson(), numberOfStudents: "5k", rating: "rating", totalLength: "totalLength", originalPrice: "originalPrice", discountedPrice: "discountedPrice"),
            Course(id: "4", courseName: "courseName", isBestSeller: true, topic: .swiftUI, author: "author", detail: "detail", courseImage: "earth", promoVideo: "sample", lesson: Lesson.sampleLesson(), numberOfStudents: "5k", rating: "rating", totalLength: "totalLength", originalPrice: "originalPrice", discountedPrice: "discountedPrice"),
            Course(id: "5", courseName: "courseName", isBestSeller: true, topic: .web, author: "author", detail: "detail", courseImage: "earth", promoVideo: "sample", lesson: Lesson.sampleLesson(), numberOfStudents: "5k", rating: "rating", totalLength: "totalLength", originalPrice: "originalPrice", discountedPrice: "discountedPrice")
        ]
    }
}
