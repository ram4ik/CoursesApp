//
//  CourseViewModel.swift
//  CoursesApp
//
//  Created by Ramill Ibragimov on 03.07.2021.
//

import Foundation

final class CourseViewModel: ObservableObject {
    
    private var course: Course
    
    @Published var selectedLesson = Lesson.sampleLesson().first!
    
    var name: String {
        course.courseName
    }
    
    var isBestSeller: Bool {
        course.isBestSeller
    }
    
    var topic: Topic {
        course.topic
    }
    
    var author: String {
        course.author
    }
    
    var detail: String {
        course.detail
    }
    
    var courseImage: String {
        course.courseImage
    }
    
    var promoVideo: String {
        
        course.promoVideo
    }
    
    var lesson: [Lesson] {
        course.lesson
    }
    
    var numberOfStudents: String {
        course.numberOfStudents
    }
    
    var rating: String {
        course.rating
    }
    
    var totalLength: String {
        course.totalLength
    }
    
    var originalPrice: String {
        course.originalPrice
    }
    
    var discountedPrice: String {
        course.discountedPrice
    }
    
    init(course: Course) {
        self.course = course
        selectedLesson = course.lesson.first!
    }
}
