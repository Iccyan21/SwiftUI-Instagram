//
//  ImagePicker.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/14.
//

import SwiftUI

// ユーザーが画像を選択できるカメラロールやフォトライブラリのインターフェースを提供

struct ImagePicker: UIViewControllerRepresentable {
    // 選択された画像を保持するためのバインディング
    @Binding var image: UIImage?
    // 画像が選択された後にピッカーを閉じる
    @Environment(\.presentationMode) var mode
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
        
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    // 選択された画像を ImagePicker ストラクトの image プロパティに設定し、ピッカーインターフェースを閉じます
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info:
                                   [UIImagePickerController.InfoKey: Any]){
            guard let image = info[.originalImage] as? UIImage else { return }
            self.parent.image = image
            self.parent.mode.wrappedValue.dismiss()
        }
    }
}
