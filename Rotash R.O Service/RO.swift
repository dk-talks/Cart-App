//
//  RO.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import Foundation
import UIKit

class RO {
    let id: Int
    let name: String
    let image: String
    let desc: String
    let price: Int
    var isAddedToCart: Bool
    
    init(id: Int, name: String, image: String, desc: String, price: Int, isAddedToCart: Bool) {
        self.id = id
        self.name = name
        self.image = image
        self.desc = desc
        self.price = price
        self.isAddedToCart = isAddedToCart
    }
    
    static var allRO: [RO] = [
        RO(id: 1, name: "Pureit Vital Max (Blue) RO+UV+MP, 7L Storage with FiltraPower Technology", image: "1",
           desc:
           """
           Proven to remove* toxic substances & provide safe drinking water*. Removes toxic substances like Industrial chemicals, pesticides and pathogens.
           Ensures every drop of water is always safe & sweet to drink.
           Enriches water with essential minerals like Calcium & Magnesium to enhance the taste of your water.
           Comes with 7 litres in-built storage tank with a 24L/H higher flow rate, ensuring purified water all day
           An Advance alert system that warns you 15 days prior to filter expiry & an Auto Shut-OffTM that halts the water flow if the filter is not changed.
           Delivers efficient purification to give a high-water recovery of up to 60% that saves up to 80 glasses daily vs ordinary RO’s.
           """,
           price: 19599, isAddedToCart: false),
        RO(id: 2, name: "Kent 32", image: "2",
            desc:
            """
            Proven to remove* toxic substances & provide safe drinking water*. Removes toxic substances like Industrial chemicals, pesticides and pathogens.
            Ensures every drop of water is always safe & sweet to drink.
            Enriches water with essential minerals like Calcium & Magnesium to enhance the taste of your water.
            Comes with 7 litres in-built storage tank with a 24L/H higher flow rate, ensuring purified water all day
            An Advance alert system that warns you 15 days prior to filter expiry & an Auto Shut-OffTM that halts the water flow if the filter is not changed.
            Delivers efficient purification to give a high-water recovery of up to 60% that saves up to 80 glasses daily vs ordinary RO’s.
            """, price: 10500, isAddedToCart: false),
        RO(id: 3, name: "Kent 32", image: "2",
            desc:
            """
            Proven to remove* toxic substances & provide safe drinking water*. Removes toxic substances like Industrial chemicals, pesticides and pathogens.
            Ensures every drop of water is always safe & sweet to drink.
            Enriches water with essential minerals like Calcium & Magnesium to enhance the taste of your water.
            Comes with 7 litres in-built storage tank with a 24L/H higher flow rate, ensuring purified water all day
            An Advance alert system that warns you 15 days prior to filter expiry & an Auto Shut-OffTM that halts the water flow if the filter is not changed.
            Delivers efficient purification to give a high-water recovery of up to 60% that saves up to 80 glasses daily vs ordinary RO’s.
            """, price: 10500, isAddedToCart: false),
        RO(id: 4, name: "Kent 32", image: "2",
            desc:
            """
            Proven to remove* toxic substances & provide safe drinking water*. Removes toxic substances like Industrial chemicals, pesticides and pathogens.
            Ensures every drop of water is always safe & sweet to drink.
            Enriches water with essential minerals like Calcium & Magnesium to enhance the taste of your water.
            Comes with 7 litres in-built storage tank with a 24L/H higher flow rate, ensuring purified water all day
            An Advance alert system that warns you 15 days prior to filter expiry & an Auto Shut-OffTM that halts the water flow if the filter is not changed.
            Delivers efficient purification to give a high-water recovery of up to 60% that saves up to 80 glasses daily vs ordinary RO’s.
            """, price: 10500, isAddedToCart: false),
        RO(id: 5, name: "Kent 32", image: "2",
            desc:
            """
            Proven to remove* toxic substances & provide safe drinking water*. Removes toxic substances like Industrial chemicals, pesticides and pathogens.
            Ensures every drop of water is always safe & sweet to drink.
            Enriches water with essential minerals like Calcium & Magnesium to enhance the taste of your water.
            Comes with 7 litres in-built storage tank with a 24L/H higher flow rate, ensuring purified water all day
            An Advance alert system that warns you 15 days prior to filter expiry & an Auto Shut-OffTM that halts the water flow if the filter is not changed.
            Delivers efficient purification to give a high-water recovery of up to 60% that saves up to 80 glasses daily vs ordinary RO’s.
            """, price: 10500, isAddedToCart: false),
        RO(id: 6, name: "Kent 32", image: "2",
            desc:
            """
            Proven to remove* toxic substances & provide safe drinking water*. Removes toxic substances like Industrial chemicals, pesticides and pathogens.
            Ensures every drop of water is always safe & sweet to drink.
            Enriches water with essential minerals like Calcium & Magnesium to enhance the taste of your water.
            Comes with 7 litres in-built storage tank with a 24L/H higher flow rate, ensuring purified water all day
            An Advance alert system that warns you 15 days prior to filter expiry & an Auto Shut-OffTM that halts the water flow if the filter is not changed.
            Delivers efficient purification to give a high-water recovery of up to 60% that saves up to 80 glasses daily vs ordinary RO’s.
            """, price: 10500, isAddedToCart: false),
        
    ]
}


