//
//  HeartView.swift
//  AnimationObject
//
//  Created by Maxim Gridenko on 29.12.2023.
//

import SwiftUI

struct HeartView: View {
    @State private var pulsate = false
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addCurve(to: CGPoint(x: 200, y: 350), control1: CGPoint(x: 380, y: 0), control2: CGPoint(x: 380, y: 200))
            path.addCurve(to: CGPoint(x: 200, y: 100), control1: CGPoint(x: 20, y: 200), control2: CGPoint(x: 40, y: 0))
        }
        .foregroundStyle(LinearGradient(
            colors: [.pink,.purple, .red],
            startPoint: .top,
            endPoint: .bottom
        )
        )
        .scaleEffect(pulsate ? 1.1 : 1.0)
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                pulsate.toggle()
            }
        }
    }
}

#Preview {
    HeartView()
    
}

