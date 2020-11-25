//
//  ContentView.swift
//  Suit
//
//  Created by addjn on 25/11/20.
//

import SwiftUI

struct ContentView: View {
    private var suit = ["Gunting", "Batu", "Kertas"].shuffled()
    @State private var n = 0
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text(suit[n])
                    .padding()
                Image(suit[n])
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            .frame(width: 160, height: 160)
            .background(Color(.systemGray6))
            Spacer()
            Button(action:{
                self.n = Int.random(in: 0...2)
            }) {
                Text("Acak")
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
