//
//  DetailView.swift
//  CoursesApp
//
//  Created by Ramill Ibragimov on 03.07.2021.
//

import SwiftUI

struct DetailView: View {
    
    var viewModel: DetailViewModel
    private var topic: Topic
    
    init(topic: Topic) {
        self.topic = topic
        viewModel = DetailViewModel(topic: topic)
    }
    
    var body: some View {
        VStack {
            List(viewModel.course(by: topic)) { course in
                NavigationLink(
                    destination: CourseView(course: course),
                    label: {
                        HStack {
                            Image(course.courseImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .padding(.trailing, 20)
                            
                            VStack(alignment: .leading) {
                                Text(course.courseName)
                                    .padding(.vertical, 5)
                                
                                Text(course.detail)
                                    .font(.caption)
                            }
                        }.padding()
                    }).buttonStyle(PlainButtonStyle())
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(viewModel.topicName)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(topic: Topic(rawValue: "iOS")!)
    }
}
