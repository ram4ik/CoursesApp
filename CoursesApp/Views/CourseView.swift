//
//  CourseView.swift
//  CoursesApp
//
//  Created by Ramill Ibragimov on 04.07.2021.
//

import SwiftUI

struct CourseView: View {
    @State private var videoPlayerPresented = false
    private let viewModel: CourseViewModel
    
    init(course: Course) {
        self.viewModel = CourseViewModel(course: course)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Rectangle()
                    .fill(viewModel.isBestSeller ? Color.orange.opacity(0.7) : Color.clear)
                    .frame(width: 80, height: 20)
                    .overlay(Text(viewModel.isBestSeller ? "BESTSELLER" : "").font(.caption))
                Spacer()
            }
            
            Text(viewModel.name)
                .font(.title)
            
            HStack {
                Spacer()
                Text("by \(viewModel.author)")
                    .foregroundColor(.secondary)
            }
            
            HStack {
                Spacer()
                CourseRatingView(title: viewModel.numberOfStudents, icon: Image(systemName: "person.3.fill"), iconColor: .orange)
                Spacer()
                CourseRatingView(title: viewModel.rating, icon: Image(systemName: "star.fill"), iconColor: .yellow)
                Spacer()
                CourseRatingView(title: viewModel.totalLength, icon: Image(systemName: "film"), iconColor: .pink)
                Spacer()
            }.foregroundColor(.secondary)
            
            HStack(alignment: .lastTextBaseline) {
                Text(viewModel.discountedPrice)
                    .font(.largeTitle)
                Text(viewModel.originalPrice)
                    .strikethrough()
                    .foregroundColor(.secondary)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(alignment: .leading, spacing: 40) {
                    ForEach(viewModel.lesson) { lesson in
                        HStack(spacing: 20) {
                            Text(lesson.id)
                                .font(.largeTitle)
                                .foregroundColor(.secondary)
                            VStack(alignment: .leading) {
                                Text(lesson.length)
                                    .foregroundColor(.secondary)
                                Text(lesson.name)
                            }
                            Spacer()
                            
                            Button {
                                videoPlayerPresented.toggle()
                                viewModel.selectedLesson = lesson
                            } label: {
                                Image(systemName: "play.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(Color.green.opacity(0.8))
                            }

                        }
                    }
                }.sheet(isPresented: $videoPlayerPresented) {
                    VideoView(videoName: viewModel.selectedLesson.video, title: viewModel.selectedLesson.name)
                }
            }
        }.padding()
    }
}

struct CourseRatingView: View {
    let title: String
    let icon: Image
    let iconColor: Color
    
    var body: some View {
        HStack {
            icon
                .foregroundColor(iconColor)
            Text(title)
        }.font(.subheadline)
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(course: Course.sampleCourses()[1])
    }
}
