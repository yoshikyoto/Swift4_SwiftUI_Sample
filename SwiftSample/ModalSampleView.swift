import SwiftUI

/// モーダルのサンプル
struct ModalSampleView: View {
    // モーダルが開いているかどうかを表す State を用意する必要があります
    @State private var isShowingModal = false
    
    var body: some View {
        Button(action: {
            // ボタンをクリックした時にステートを変更します
            // toggle は boolean の true と false を入れ替えるメソッド
            // これを true にすることでモーダルが表示されます
            self.isShowingModal.toggle()
        }){
            // ボタンの文字
            Text("モーダルを開く")
            
        // .sheet の中身がモーダル（シートのUI？）の中身になります
        // isShowingSettingModal の値が true になると勝手に表示されます
        // $ がついているのは、値が変わった時にちゃんと評価され治せるようにとか、そんなんだと思います。
        }.sheet(isPresented: self.$isShowingModal) {
            // 中身は適当に別のビューを用意します。
            ModalView()
        }
    }
}

struct ModalView: View {
    var body: some View {
        Text("モーダル")
    }
}
