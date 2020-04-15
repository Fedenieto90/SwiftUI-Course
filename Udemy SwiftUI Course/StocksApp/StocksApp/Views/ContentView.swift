//
//  ContentView.swift
//  StocksApp
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var stockListVM: StockListViewModel
    @ObservedObject var articleListVM: ArticleListViewModel
    
    init() {
        self.stockListVM = StockListViewModel()
        self.articleListVM = ArticleListViewModel()
    }
    
    var body: some View {
        
        let filteredStocks = self.stockListVM.searchTerm.isEmpty ? self.stockListVM.stocks : self.stockListVM.stocks.filter { $0.symbol.starts(with: self.stockListVM.searchTerm.uppercased())}
        
        return NavigationView {
            ZStack(alignment: .leading) {
                SearchView(searchTerm: self.$stockListVM.searchTerm).offset(y: -330)
                StocksListView(stocks: filteredStocks)
                    .offset(y: 150)
                ArticlesListView(articles: self.articleListVM.articles,onDragBegin: { value in
                    self.stockListVM.dragOffset = value.translation
                }, onDragEnded: { value in
                    if value.translation.height < 0 {
                        self.stockListVM.dragOffset = CGSize(width: 0.0, height: 100.0)
                    } else {
                        self.stockListVM.dragOffset = CGSize(width: 0.0, height: 680.0)
                    }
                })
                    .animation(.spring())
                    .offset(y: self.stockListVM.dragOffset.height)
            }
            .navigationBarTitle("Stocks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
