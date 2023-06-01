//
//  ContentView.swift
//  SwiftNotes
//
//  Created by Luis Carlos Quesada Rodriguez on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var showImagePicker: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                if true {
                    Text("Try adding a note!")
                        .italic()
                        .foregroundColor(.gray)
                }
                
                else {
                    HomeView()
                }
            }
            .navigationTitle("SwiftNotes!")
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(sourceType: .photoLibrary){
                image in
                    // Add notes / images to array
                    print("\(image.scale)")
                }
            }
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showImagePicker.toggle()
                    }
                    label : {
                        Label("Image", systemImage: "photo.on.rectangle.angled")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
