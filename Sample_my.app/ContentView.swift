//
//  ContentView.swift
//  Sample_my.app
//
//  Created by mdigix on 2024/12/16.
//

import SwiftUI

struct ContentView: View {
    //　状態変数の追加
    @State private var message: String = "Hello, world!"
    
    var body: some View {
        VStack {
            //　テキストの表示
            Text(message)
                .font(.largeTitle)
                .padding()
            
            //　ボタンを追加
            Button(action: {
                //　ボタンを押した時にメッセージを変更
                message = "Happy SwiftUI!"
            }) {
                VStack(spacing: 20) {
                    Text("Press star icon")
                        .padding(.bottom, -12.0)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .scaleEffect(0.9)
                }
                
            }
            
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View{
            ContentView()
        }
    }
}
