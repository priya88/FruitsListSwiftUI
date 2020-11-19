//
//  FruitDetailsView.swift
//  FruitsListSwiftUI
//
//  Created by Priyanka Saroha on 11/19/20.
//

import SwiftUI

struct FruitDetailsView: View {
    var name: String
    var description: String
    
    var body: some View {
        VStack {
            Image(name)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.gray, lineWidth: 1)
                )
                .shadow(radius: 10)
            Text(name)
                .font(.title)
            Divider().background(Color.white)
            Text(description)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(name: "Banana", description: "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa.")
    }
}
