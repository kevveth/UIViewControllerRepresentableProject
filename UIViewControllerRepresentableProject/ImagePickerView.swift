//
//  ImagePickerView.swift
//  UIViewControllerRepresentableProject
//
//  Created by Kenneth Oliver Rathbun on 11/6/23.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePickerView
        init(parent: ImagePickerView) {
            self.parent = parent
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("They selected something!")
    }
    
    func makeUIViewController(context: Self.Context) -> UIImagePickerController {
        let imagePickerVC = UIImagePickerController()
        imagePickerVC.delegate = context.coordinator
        return imagePickerVC
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        return
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
}

#Preview {
    ImagePickerView()
}
