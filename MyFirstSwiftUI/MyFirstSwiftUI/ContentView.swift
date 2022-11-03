//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by ByteDance on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var filterIntensity = 0.5
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
    var body: some View {

        VStack{
            ZStack{
                Rectangle().fill(Color.secondary)
                if image != nil {
                    image?
                        .resizable()
                        .scaledToFit()
                } else {
                    Text("Tap to select a picture")
                        .foregroundColor(.white)
                        .font(.headline)
                }

            }.onTapGesture {
                self.showingImagePicker = true
            }
            
            HStack{
                Text("Strength")
                Slider(value:self.$filterIntensity)
            }.padding(.vertical)
            
            HStack{
                Button("change drawer"){
                    
                }
                Spacer()
                Button("Save"){
                    
                }
            }
        }.padding([.horizontal, .bottom])
        .navigationBarTitle("Instafilter").sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
