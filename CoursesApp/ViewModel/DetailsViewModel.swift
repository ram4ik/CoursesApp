//
//  DetailsViewModel.swift
//  CoursesApp
//
//  Created by ramil on 01.07.2021.
//

import Foundation

final class DetailViewModel {
    
    private let topic: Topic
    private let allCourses = Course.sampleCourses()
    
    var topicName: String {
        topic.rawValue
    }
    
    init(topic: Topic) {
        self.topic = topic
    }
    
    func course(by topic: Topic) -> [Course] {
        allCourses.filter { $0.topic == topic }
    }
}
