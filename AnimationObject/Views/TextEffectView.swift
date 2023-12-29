//
//  TextEffectView.swift
//  AnimationObject
//
//  Created by Maxim Gridenko on 29.12.2023.
//

import SwiftUI

struct TextEffectView: View {
    let text: String
    @State private var  displayCharacters = ""
    let timer = Timer.publish(
        every: 0.1,
        on: .main,
        in: .common
    )
        .autoconnect()
    
    var body: some View {
        Text(displayCharacters)
            .font(Font.custom("", size: 45))
            .foregroundStyle(Color.white)
            .bold()
            .onReceive(timer){ _ in
                if displayCharacters.count < text.count {
                    let index = text.index(text.startIndex, offsetBy: displayCharacters.count )
                    displayCharacters.append(text[index])
                }
            }
    }
}

#Preview {
    TextEffectView(text: "")
}
