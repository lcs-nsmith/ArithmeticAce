//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State var multiplicand = Int.random(in:1...12)
    @State var multiplier = Int.random(in:1...12)
    @State var inputGiven = ""
    
    @State var checkmarkTrue = false
    
    var input: Double? {
        guard let input =
                Double(inputGiven),
              input > 0
        else {
            return nil
        }
        
        return input
    }
    
    // MARK: Computed Propeties
    var correctProduct: Int {
        return multiplier * multiplicand
    }
    var body: some View {
        VStack {
            Spacer()
            HStack (spacing: 130) {
                VStack (spacing: 65){
                    Spacer()
                    Text("×")
                        .font(.system(size: 72))
                        .padding(.top,80)
                        .padding(.leading)
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .foregroundColor(.green)
                        .scaledToFit()
                        .frame(width: 72, height: 72)
                        .padding(.leading)
                        .opacity(checkmarkTrue ? 1.0 : 0.0)
                    Spacer()
                }
                VStack (alignment: .trailing){
                    Text("\(multiplicand)")
                        .font(.system(size: 72))
                    Text("\(multiplier)")
                        .font(.system(size: 72))
                        .padding(.bottom)
                    TextField("Type The Correct Answer",
                              text: $inputGiven)
                        .padding(.top, 90)
                        .foregroundColor(input == nil ? Color.red : Color.primary)
                }
                .padding(.trailing)
            }
            Button(action: {
                // Convert inputGiven to int
                guard let productGiven = Int(inputGiven) else {
                    return
                }
                
                // Where the answer is checken
                if productGiven == correctProduct {
                    return checkmarkTrue = true
                }
            }) {
                // What the button displays
                Text("Check Answer")
                    .font(.title2)                    .padding()
            }
            .buttonStyle(.bordered)
            
            Spacer(minLength: 35)
            
            Button(action: {
                checkmarkTrue = false
                multiplicand = Int.random(in:1...12)
                multiplier = Int.random(in:1...12)
                inputGiven = ""
            }) {
                Text("New Equation")
                    .font(.title2)                    .padding()
                    .foregroundColor(.green)
            }
            .buttonStyle(.bordered)
            
            Spacer(minLength: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
