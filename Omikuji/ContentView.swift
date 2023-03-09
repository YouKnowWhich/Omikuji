// if文を使用したおみくじアプリ

import SwiftUI

struct ContentView: View {
    
    // おみくじの結果を格納する変数（0=初期画面, 1=大吉, 2=吉, 3=中吉, 4=小吉, 5=末吉, 6=凶, 7=大凶）
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            // おみくじの数字が0だったら
            if answerNumber == 0 {
                // 初期画面のテキストを表示
                Text("今日の運勢は？")
            } else if answerNumber == 1 {
                // おみくじの数字が1だったら「大吉」
                Text("大吉")
            } else if answerNumber == 2 {
                // おみくじの数字が2だったら「吉」
                Text("吉")
            } else if answerNumber == 3 {
                // おみくじの数字が3だったら「中吉」
                Text("中吉")
            } else if answerNumber == 4 {
                // おみくじの数字が4だったら「小吉」
                Text("小吉")
            } else if answerNumber == 5 {
                // おみくじの数字が5だったら「末吉」
                Text("末吉")
            } else if answerNumber == 6 {
                // おみくじの数字が6だったら「凶」
                Text("凶")
            } else {
                // おみくじの数字が1~6以外だったら「大凶」
                Text("大凶")
            }
            
            // おみくじの画像
            Image("おみくじイラスト")
                .resizable()
                .scaledToFit()
                .padding()
            
            // おみくじボタン
            Button {
                // ボタンがタップされたときの動き（ランダム）
                answerNumber = Int.random(in: 0...6)
                print("タップした！")
            } label: {
                // ボタンに表示する文字
                Text("おみくじを引く！")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
