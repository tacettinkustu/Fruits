//
//  OnboardingView.swift
//  Fruits
//
//  Created by Tacettin Küstü on 7.06.2023.
//

import SwiftUI

struct OnboardingView: View {
   
  var body: some View {
    TabView {
      ForEach(0..<5) { item in
        // FruitCardView()
          Text("Cards")
      } //: Loop
    } //: Tab
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
      .previewDevice("iPhone 14")
  }
}
