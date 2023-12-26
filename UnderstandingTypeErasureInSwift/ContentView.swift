//
//  ContentView.swift
//  UnderstandingTypeErasureInSwift
//
//  Created by test on 26.12.2023.
//

import SwiftUI

protocol Printable {
    var data: Data { get }
}

struct Photo: Printable {
    let image: Data
    
    var data: Data {
        image
    }
}

struct Letter: Printable {
    let text: String
    
    var data: Data {
        text.data(using: .utf8) ?? Data()
    }
}

struct Postcard: Printable {
    let text: String
    
    var data: Data {
        text.data(using: .utf8) ?? Data()
    }
}

struct Printer {
//    func print(_ photo: Photo) {
//        
//    }
//    func print(_ letter: Letter) {
//        
//    }
    func print(_ printable: Printable) {
        
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            let printer = Printer()
            printer.print(Photo(image: Data()))
            printer.print(Letter(text: "My Letter"))
            printer.print(Postcard(text: "My Postcard"))
        }
    }
}

#Preview {
    ContentView()
}
