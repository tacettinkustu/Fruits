//
//  OnboardingView.swift
//  Fruits
//
//  Created by Tacettin Küstü on 7.06.2023.
//

import SwiftUI

struct OnboardingView: View {
    
  var fruits: [Fruit] = fruitsData
   
  var body: some View {
    TabView {
        ForEach(fruits[0...5]) { item in
            FruitCardView(fruit: item)
        } //: Loop
    } //: Tab
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(fruits: fruitsData)
      .previewDevice("iPhone 14")
  }
}
