//
//  CollegeLogic.swift
//  Assignment7_TableView
//
//  Created by Colby Brown on 2/21/26.
//

import Foundation

struct CollegeLogic {
    
    var colleges = [
        CollegeMascot("Auburn University", "Tigers"),
        CollegeMascot("Appalachian State University", "Mountaineers"),
        CollegeMascot("University of Texas", "Longhorns"),
        CollegeMascot("University of North Carolina", "Tarheels"),
        CollegeMascot("University of Tennessee", "Volunteers"),
        CollegeMascot("Louisiana State University", "Tigers"),
        CollegeMascot("University of Oregon", "Ducks"),
        CollegeMascot("Ohio State University", "Buckeyes"),
        CollegeMascot("University of Florida", "Gators"),
        CollegeMascot("Texas Tech University", "Red Raiders")
    ]

    func getCount() -> Int {
        return colleges.count
    }
    
    func getCollege(at index: Int) -> String {
        return colleges[index].college
    }
    
    func getMascot(at index: Int) -> String {
        return colleges[index].mascot
    }
    
    func getDeleteMessage(at index: Int) -> String {
        return "Deleted" + getCollege(at: index)
    }
    
    mutating func removeCollege(at index: Int) {
        colleges.remove(at: index)
    }
    
    
    
}
