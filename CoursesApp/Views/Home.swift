//
//  Home.swift
//  CoursesApp
//
//  Created by ramil on 30.06.2021.
//

import SwiftUI

struct Home: View {
    
    @State private var searchText = ""
    private var allTopics = Topic.allCases
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                greeting
                searchView
                topics
                Spacer()
            }
            .padding()
            .navigationTitle("Courses")
        }
    }
    
    private var greeting: some View {
        HStack {
            Text("Hello User")
                .font(.title)
            Spacer()
        }
    }
    
    private var searchView: some View {
        VStack(alignment: .leading) {
            Text("Find the course you want to enroll")
                .foregroundColor(.secondary)
            TextField("Search here", text: $searchText)
                .padding()
                .padding(.leading, 40)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.secondary.opacity(0.3))
                        .overlay(
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary.opacity(0.8))
                                .padding(.leading), alignment: .leading
                        )
                )
        }
    }
    
    private var topics: some View {
        VStack {
            HStack {
                Text("Topics")
                    .bold()
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(allTopics.filter { searchText.isEmpty ? true : $0.rawValue.lowercased().contains(searchText.lowercased())}, id: \.self) { topic in
                        NavigationLink (
                            destination: Text("\(topic.rawValue)"),
                            label: {
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(topic.backColor().opacity(0.7))
                                    .frame(width: 150, height: 200)
                                    .padding()
                                    .overlay(
                                        Text(topic.rawValue)
                                            .bold()
                                            .lineLimit(2)
                                            .foregroundColor(.primary)
                                            .padding(50)
                                    )
                            })
                    }
                }.animation(.easeIn)
            }
        }.padding(.top, 20)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
