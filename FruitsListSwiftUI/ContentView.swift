//
//  ContentView.swift
//  FruitsListSwiftUI
//
//  Created by Priyanka Saroha on 11/19/20.
//

import SwiftUI

struct ContentView: View {
    
    // fruitsListData: A sample data for fruits list.
    
    @State private var fruitsList = fruitsListData
    
    var body: some View {
        
        // Add List in a navigation view to peform cell selection for showing fruit details view.
        
        NavigationView {
            
            // List will iterate the fruitsList and add the cell for each fruit in data list.
            
            List {
                ForEach(fruitsList) { aFruit in
                    
                    // Custom cell to display fruit data
                    
                    FruitCell(fruit: aFruit)
                }
                
                // To delete a row
                
                .onDelete(perform: { indexSet in
                    fruitsList.remove(atOffsets: indexSet)
                })
                
                // To move row from one index to another
                // Use .onMove(perform: nil) to disbale moving of row in editing mode.
                .onMove(perform: { indices, newOffset in
                    fruitsList.move(fromOffsets: indices, toOffset: newOffset)
                })
            }
            .navigationBarTitle("Fruits", displayMode: .large)
            
            // Add EDIT button to navigation bar to enable editing of rows
            
            .navigationBarItems(trailing: EditButton())
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
