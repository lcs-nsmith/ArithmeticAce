//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Nathan Smith on 2022-02-07.
//

import SwiftUI

struct AdditionView: View {
    
    // MARK: Stored Properties
    @State var augend = Int.random(in:1...12)
    @State var addend = Int.random(in:1...12)
    @State var inputGiven = ""
    
    @State var checkmarkTrue = false
    @State var whiteBoxAllumer = true
    @State var cAOpacity = true
    
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
        return augend + addend
    }
    var body: some View {
        VStack {
            Spacer()
            HStack (spacing: 130) {
                VStack (spacing: 65){
                    Spacer()
                    Text("+")
                        .font(.system(size: 72))
                        .padding(.top,80)
                        .padding(.leading)
                    Spacer()
                    ZStack {
                        Image(systemName: "checkmark.circle")
                            .resizable()
                            .foregroundColor(.green)
                            .scaledToFit()
                            .frame(width: 72, height: 72)
                            .padding(.leading)
                            .opacity(checkmarkTrue ? 1.0 : 0.0)
                        Image(systemName: "x.square")
                            .resizable()
                            .foregroundColor(.red)
                            .scaledToFit()
                            .frame(width: 72, height: 72)
                            .padding(.leading)
                            .opacity(checkmarkTrue ? 0.0 : 1.0)
                        Image(systemName: "square.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .scaledToFit()
                            .frame(width: 72, height: 72)
                            .padding(.leading)
                            .opacity(whiteBoxAllumer == true ? 1.0 : 0.0)
                    }
                    Spacer()
                }
                VStack (alignment: .trailing){
                    Text("\(augend)")
                        .font(.system(size: 72))
                    Text("\(addend)")
                        .font(.system(size: 72))
                        .padding(.bottom)
                    TextField("____",
                              text: $inputGiven)
                        .foregroundColor(input == nil ? Color.red : Color.primary)
                    
                    
                    
                }
                .font(.system(size: 72))
                .padding(.trailing)
            }
            Button(action: {
                whiteBoxAllumer = false
                cAOpacity = false
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
            .opacity(cAOpacity ? 1.0 : 0.0)
            .opacity(input == nil ? 0.0 : 1.0)
            
            Spacer(minLength: 35)
            
            Button(action: {
                checkmarkTrue = false
                augend = Int.random(in:1...12)
                addend = Int.random(in:1...12)
                inputGiven = ""
                whiteBoxAllumer = true
                cAOpacity = true
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

struct AdditionView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionView()
    }
}
