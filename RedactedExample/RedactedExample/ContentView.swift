//
//  ContentView.swift
//  RedactedExample
//
//  Created by Bhanu Sharma on 27/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ArticleView(article: nil)
        }
        .padding()
    }
}

struct Article {
    let title: String
    let author: String
}

struct ArticleView: View {

    @State var article: Article? = Article(title: "Journey", author: "Bhanu Sharma")

    var body: some View {
        VStack(alignment: .leading) {
            Text(article?.title ?? "vhvwhvxhwvhhgsgcujbcjushwv")
                .font(.headline)
            Text(article?.author ?? "nbnjbejkbcje")
                .font(.subheadline)
        }.padding()
            .redacted(reason: article == nil ? .placeholder : [])
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
