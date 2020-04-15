//
//  ArticleListViewModel.swift
//  StocksApp
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class ArticleListViewModel: ObservableObject {
    
    @Published var articles = [ArticleViewModel]()
    
    let webService: WebService
    
    init() {
        webService = WebService()
        fetchAllArticles()
    }
    
    func fetchAllArticles() {
        webService.getAllArticles { articles in
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
        }
    }
    
}

struct ArticleViewModel {
    
    var id = UUID()
    
    private var article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var imageUrl: String {
        return article.imageURL
    }
    
    var title: String {
        return article.title
    }
    
    var publication: String {
        return article.publication
    }
    
}
