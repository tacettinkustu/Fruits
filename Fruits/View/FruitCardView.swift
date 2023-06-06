//
//  FruitCardView.swift
//  Fruits
//
//  Created by Tacettin Küstü on 6.06.2023.
//

import SwiftUI

struct FruitCardView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                   .resizable()
                   .scaledToFit()
                   .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                   // .scaleEffect(isAnimating ? 1.0 : 0.6)
                               
                Text("Blueberry")
            } //: VStack
        } //: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
