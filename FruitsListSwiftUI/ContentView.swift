//
//  ContentView.swift
//  FruitsListSwiftUI
//
//  Created by Priyanka Saroha on 11/19/20.
//

import SwiftUI

struct ContentView: View {
    
    // fruitsListData: A sample data for fruits list.
    
    var fruitsList = fruitsListData
    
    var body: some View {
        
        // Add List in a navigation view to peform cell selection for showing fruit details view.
        
        NavigationView {
            
            // List will itearte the fruitsList and add the cell for each fruit in data list.
            
            List(fruitsList) {aFruit in
                
                // Custom cell to display fruit data
                
                FruitCell(fruit: aFruit)
            }
            .navigationBarTitle("Fruits", displayMode: .large)
        }
    }
}

struct FruitCell: View {
    var fruit: Fruit
    
    var body: some View {
        
        // Add the navigation link to the cell for FruitDetailsView
        
        return NavigationLink(destination: FruitDetailsView(name: fruit.name, description: fruit.description))  {
            HStack {
                Image(fruit.name)
                
                VStack(alignment: .leading) {
                    Text(fruit.name)
                        .font(.headline)
                    Text(fruit.description)
                        .lineLimit(2)
                        .font(.subheadline)
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
