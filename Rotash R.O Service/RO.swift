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
    
    init(id: Int, name: String, desc: String, price: Int, image: String, isAddedToCart: Bool) {
        self.id = id
        self.name = name
        self.desc = desc
        self.price = price
        self.image = image
        self.isAddedToCart = isAddedToCart
    }
    
    static var allRO: [RO] = [
        RO(id: 1, name: "AQUAGUARD Marvel 8L RO+UV+MTDS Water Purifier", desc: "The AQUAGUARD Marvel 8L RO+UV+MTDS Water Purifier is a top-rated water purifier that uses a combination of RO, UV, and MTDS technologies to remove impurities from water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UV technology removes bacteria, viruses, and other microorganisms. The MTDS technology helps to adjust the taste of the water as per the input water source. The purifier has an 8-liter storage tank, making it suitable for a family of 3-4 members.", price: 16499, image: "aquaguard", isAddedToCart: false),
        RO(id: 2, name: "Eureka Forbes Aquasure 6-L ", desc: "The Eureka Forbes Aquasure from Aquaguard Splash RO+UF 6-Litre Water Purifier is a water purifier that uses a combination of RO and UF technologies to remove impurities from water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UF technology removes bacteria, viruses, and other microorganisms. The purifier has a 6-liter storage tank, making it suitable for a small family.", price: 10999, image: "aguasure", isAddedToCart: false),
        RO(id: 3, name: "Livpure Glitz Silver RO UF Mineralizer", desc: "The Livpure Glitz Silver RO UF Mineralizer 7 L RO + UF Water Purifier is a water purifier that uses a combination of RO and UF technologies to remove impurities from water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UF technology removes bacteria, viruses, and other microorganisms. The purifier also has a mineralizer that adds essential minerals back to the purified water, making it both safe and healthy to drink. The purifier has a 7-liter storage tank, making it suitable for a family of 3-4 members.", price: 9799, image: "livpure", isAddedToCart: false),
        RO(id: 4, name: "KENT Pearl 8-Litres Mineral RO+UV+UF ", desc: "The KENT Pearl 8-Litres Mineral RO+UV+UF Water Purifier is a top-rated water purifier that uses a combination of RO, UV, and UF technologies to provide clean and healthy drinking water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UV and UF technologies remove bacteria, viruses, and other microorganisms. The purifier also has a TDS controller that retains essential minerals in the purified water. The purifier has an 8-liter storage tank, making it suitable for a family of 3-4 members.", price: 15800, image: "kent", isAddedToCart: false),
        
        RO(id: 5, name: "Blue Star Majesto RO+UV Water Purifier", desc: "The Blue Star Majesto RO+UV Water Purifier is a top-rated water purifier that uses a combination of RO and UV technologies to provide clean and healthy drinking water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UV technology removes bacteria, viruses, and other microorganisms. The purifier has a 7-liter storage tank, making it suitable for a family of 3-4 members.", price: 12990, image: "bluestar", isAddedToCart: false),
        RO(id: 6, name: "Havells Max Alkaline 7-Liter RO+UV Water Purifier", desc: "The Havells Max Alkaline 7-Liter RO+UV Water Purifier is a water purifier that uses a combination of RO and UV technologies to remove impurities from water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UV technology removes bacteria, viruses, and other microorganisms. The purifier also has a mineralizer that adds essential minerals back to the purified water, making it both safe and healthy to drink. The purifier has a 7-liter storage tank, making it suitable for a family of 3-4 members.", price: 13999, image: "havells", isAddedToCart: false),
        RO(id: 7, name: "AO Smith Z8 Green RO ", desc: "The AO Smith Z8 Green RO 10 Litre Water Purifier is a top-rated water purifier that uses a combination of RO, UV, and MTDS technologies to remove impurities from water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UV technology removes bacteria, viruses, and other microorganisms. The MTDS technology helps to adjust the taste of the water as per the input water source. The purifier has a 10-liter storage tank, making it suitable for a family of 4-5 members.", price: 22999, image: "aosmith", isAddedToCart: false),
        RO(id: 8, name: "LG Puricare WW140NP", desc: "The LG Puricare WW140NP RO + Mineral Booster Water Purifier is a top-rated water purifier that uses a combination of RO and Mineral Booster technologies to provide clean and healthy drinking water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the Mineral Booster technology adds essential minerals back to the purified water. The purifier has a 8-liter storage tank, making it suitable for a family of 3-4 members.", price: 18990, image: "lg", isAddedToCart: false),
        RO(id: 9, name: "Pureit Ultima", desc: "The Pureit Ultima Mineral RO + UV + MF 7 Stage Table top/Wall mountable Black 10 litres Water Purifier is a water purifier that uses a combination of RO, UV, and MF technologies to remove impurities from water. The RO technology removes dissolved impurities like chemicals, pesticides, and heavy metals, while the UV technology removes bacteria, viruses, and other microorganisms. The MF technology removes microOrganisms.", price: 15900, image: "ultima", isAddedToCart: false)
        
        
        
        
    ]
}


