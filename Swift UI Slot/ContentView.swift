//
//  ContentView.swift
//  Swift UI Slot
//
//  Created by Emmanuel Ugwuoke on 13/10/2022.
//

import SwiftUI

struct ContentView: View {
    let images = ["star", "cherry", "apple"]
    @State var firstImage = 0
    @State var secordImage = 1
    @State var thirdImage = 2
    
    @State var credit = 0
    
    
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slot").font(.largeTitle)
            Spacer()
            Text("Credit: \(credit)")
            Spacer()
            
            HStack {
                Spacer()
                Image(images[firstImage]).resizable().aspectRatio( contentMode: .fit)
                Spacer()
                Image(images[secordImage]).resizable().aspectRatio( contentMode: .fit)
                Spacer()
                Image(images[thirdImage]).resizable().aspectRatio( contentMode: .fit)
                Spacer()
            }
            Spacer()
            
            Button("Spin"){
                
                firstImage = Int.random(in: 0...2)
                secordImage = Int.random(in: 0...2)
                thirdImage = Int.random(in: 0...2)
                
                if firstImage == secordImage && secordImage == thirdImage {
                    credit += 10
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
            .buttonBorderShape(.roundedRectangle)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.pink/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
