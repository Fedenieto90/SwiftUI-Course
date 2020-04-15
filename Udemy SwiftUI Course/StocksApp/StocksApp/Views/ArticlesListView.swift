//
//  ArticlesListView.swift
//  StocksApp
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ArticlesListView: View {
    
    var articles = [ArticleViewModel]()
    var onDragBegin: (DragGesture.Value) -> Void
    var onDragEnded: (DragGesture.Value) -> Void
    
    var body: some View {
        
        return VStack(alignment: .leading) {
            HStack {
                VStack() {
                    Text("Top News")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding([.top, .leading], 20.0)
                    Text("From 🍎 News")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                }
            Spacer()
            }.padding().contentShape(Rectangle())
                .gesture(DragGesture()
                    .onChanged(self.onDragBegin)
                    .onEnded(self.onDragEnded))
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(self.articles, id: \.id) { article in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(article.title)
                                    .foregroundColor(.white)
                                    .font(.custom("Arial", size: 22))
                                    .fontWeight(.bold)
                                Text(article.publication)
                                    .foregroundColor(.white)
                                .font(.custom("Arial", size: 16))
                            }
                        }.padding()
                    }
                }.frame(maxWidth: .infinity)
            }
        }.frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            .background(Color.black)
            .cornerRadius(16)
            .shadow(radius: 20)
    }
}

struct ArticlesListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesListView(articles: [ArticleViewModel(article: Article(title: "Title", publication: "Description", imageURL: ""))], onDragBegin: {_ in}, onDragEnded: {_ in})
    }
}
