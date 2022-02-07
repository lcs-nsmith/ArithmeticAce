//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    let multiplicand = Int.random(in:1...12)
    let multiplier = Int.random(in:1...12)
    @State var inputGiven = ""
    
    // MARK: Computed Propeties
    var body: some View {
        VStack {
            Spacer()
            HStack (spacing: 140) {
                VStack (spacing: 65){
                Spacer()
                Text("×")
                        .font(.system(size: 72))
                Spacer()
                Image(systemName: "checkmark.circle")
                        .resizable()
                        .foregroundColor(.green)
                        .scaledToFit()
                        .frame(width: 72, height: 72)
                Spacer()
                }
                VStack (alignment: .trailing){
                    Text("\(multiplicand)")
                        .font(.system(size: 72))
                    Text("\(multiplier)")
                        .font(.system(size: 72))
                        .padding(.bottom)
                    TextField("Type the Answer", text: $inputGiven)

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
