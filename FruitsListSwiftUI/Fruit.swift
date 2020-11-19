//
//  Fruit.swift
//  FruitsListSwiftUI
//
//  Created by Priyanka Saroha on 11/19/20.
//

import Foundation

struct Fruit: Identifiable {
    var id = UUID()
    var name: String
    var description: String
}

var fruitsListData = [Fruit(name: "Banana", description: "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa."), Fruit(name: "Apple", description: "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus."), Fruit(name: "Orange", description: "The orange is the fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis, which is also called sweet orange"), Fruit(name: "Pineapple", description: "The pineapple (Ananas comosus) is a tropical plant with an edible fruit and the most economically significant plant in the family Bromeliaceae. "), Fruit(name: "Watermelon", description: "Watermelon (Citrullus lanatus) is a plant species in the family Cucurbitaceae, a vine-like flowering plant originally domesticated in Africa. ")]
