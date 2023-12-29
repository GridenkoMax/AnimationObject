//
//  ContentView.swift
//  AnimationObject
//
//  Created by Maxim Gridenko on 29.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showMainView = false
    var body: some View {
        
        ZStack{
            if showMainView{
                Color.black.edgesIgnoringSafeArea(.all)
                HeartView()
            }else{
                Color.black.edgesIgnoringSafeArea(.all)
                TextEffectView(text: "Animation Heart")
                    .onAppear{
                        withAnimation {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                showMainView = true
                            }
                        }
                    }
            }
        }
    }
}

//#Preview {
//    ContentView()
//}
