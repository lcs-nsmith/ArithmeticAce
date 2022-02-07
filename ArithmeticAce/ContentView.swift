//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack (spacing: 110) {
                VStack (spacing: 65){
                Spacer()
                Text("×")
                        .font(.system(size: 72))
                Spacer()
                Image(systemName: "checkmark.circle")
                        .resizable()
                        .foregroundColor(.green)
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                Spacer()
                }
                VStack {
                    Text("5")
                        .font(.system(size: 72))
                    Text("6")
                        .font(.system(size: 72))
                        .padding(.bottom)
                    Text("30")
                        .font(.system(size: 72))
                }
            }
            Button(action: {
                
            }) {
                Text("Check Answer")
                    .fontWeight(.light)
                    .padding()
            }
            .buttonStyle(.bordered)
            Spacer(minLength: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
