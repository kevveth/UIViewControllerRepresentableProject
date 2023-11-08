//
//  ContentView.swift
//  UIViewControllerRepresentableProject
//
//  Created by Kenneth Oliver Rathbun on 11/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showImagePickerView = false
    @State private var selectedImage: UIImage?
    
    var imageView: Image {
        guard let selectedImage = selectedImage else {
            return Image(systemName: "photo")
        }
        return Image(uiImage: selectedImage)
    }
    
    var body: some View {
        VStack {
            Text("Choose an image!")
                .font(.largeTitle)
                .padding()
            Spacer()
            imageView
                .resizable()
                .scaledToFit()
                .padding()
                .onTapGesture {
                    showImagePickerView = true
                }
            Spacer()
            Spacer()
            
        }
        .sheet(isPresented: $showImagePickerView) {
            ImagePickerView()
        }
    }
}

#Preview {
    ContentView()
}
