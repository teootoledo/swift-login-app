//
//  Button.swift
//  BasicLogin
//
//  Created by Teo Toledo on 07/06/2024.
//

import SwiftUI

struct ButtonView: View {
    var text: String
    var icon: Image
    var clicked: (() -> Void)
    var background: Color = Color.primary
    var textColor: Color = Color.white
    var width: CGFloat = UIScreen.main.bounds.width - 32
    var height: CGFloat = 48
    var cornerRadius: CGFloat = 10
    var padding: CGFloat = 24
    
    var body: some View {
        Button(action: clicked) {
            HStack {
                Text(text)
                    .fontWeight(.semibold)
                icon
            }
                .foregroundColor(textColor)
                .frame(width: width, height: height)
        }
        .background(background)
        .cornerRadius(cornerRadius)
        .padding(.top, padding)
    }
}

#Preview {
    ButtonView(
        text: "Text",
        icon: Image(systemName: "photo")
    ) {
        print("Clicked")
    }
}
