//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Blaine Beltran on 12/5/20.
//  Copyright © 2020 Blaine Beltran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        /*
         Here the scroll view is turned horizontal by using the .horizontal property and we hide the
         scroll bar at the bottom of the horizontal scrollview
         */
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack(alignment: .leading) {
                    Text("MONDAY, DEC 7")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Future of Apps")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                }
                .layoutPriority(100)
                
                Spacer()
                
            }
            .padding([.top, .horizontal])
            .layoutPriority(-100)
            
            HStack {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Blaine Beltran")
                    .frame(width: 300)
                CardView(image: "macos-programming", category: "macOS", heading: "Building a simple Editing App", author: "John Cranner")
                    .frame(width: 300)
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Alice Tran")
                    .frame(width: 300)
                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Little")
                    .frame(width: 300)
            }
            .layoutPriority(200)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
