//
//  FruitCardView.swift
//  Fruits
//
//  Created by Tacettin Küstü on 6.06.2023.
//

import SwiftUI

struct FruitCardView: View {
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                   .resizable()
                   .scaledToFit()
                   .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                   .scaleEffect(isAnimating ? 0.9 : 0.4)
                               
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            } //: VStack
        } //: ZStack
        .onAppear {
          withAnimation(.easeOut(duration: 1)) {
            isAnimating = true
          }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
