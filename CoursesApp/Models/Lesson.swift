//
//  Lesson.swift
//  CoursesApp
//
//  Created by ramil on 28.06.2021.
//

import Foundation

struct Lesson: Identifiable {
    let id: String
    let name: String
    let length: String
    let video: String
}

extension Lesson {
    
    static func sampleLesson() -> [Lesson] {
        [
            Lesson(id: "01", name: "Intro", length: "0:22 mins", video: "sample"),
            Lesson(id: "02", name: "Design", length: "0:28 mins", video: "sample"),
            Lesson(id: "03", name: "Model creation", length: "0:32 mins", video: "sample"),
            Lesson(id: "04", name: "View model for Views", length: "0:12 mins", video: "sample"),
            Lesson(id: "05", name: "Binding views together", length: "0:18 mins", video: "sample"),
            Lesson(id: "06", name: "summary", length: "0:5 mins", video: "sample"),
        ]
    }
}
