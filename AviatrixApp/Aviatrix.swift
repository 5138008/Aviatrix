//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix
{
    var fuelLevel = 5000.0
    var maxFuel = 5000
    var currentLocation = "St.Louis"
    var distanceTraveled = 0
    //saying who created this plane and airline
    //I have a property that says author
    var author : String
    init(myAuthor : String ){
        author = myAuthor
    }
    //This function should tell us if the airplane is running or not
    var running = false
    //Starts the airplane so it means it's running
    func start() -> Bool { //Stands for Boolean which means true or false
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) { distanceTraveled += distanceTo(target: destination, current: currentLocation) ; currentLocation = destination
    }
    //I want to tell every plane that I create from this class how far places are
    //I need the place and distance
    func distanceTo(target : String, current: String)-> Int {
        //I need to get information from the AviatrixData file
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
    }
        //Swift uses ! to mean not, but it also uses it to mean "I know there is definetly data here"
    func knownDestinations() -> [String] {
        //change this function so I return all the options for destinations
        //I need to get information from the AviatrixData.swift file
        let data = AviatrixData()
        //I called the AviatrixData class
        return Array(data.knownDistances.keys)
        //I stored all of the keys for destinations in an Array
    }
}

//FOR TMRW: START OFF ON SLIDE 41!!!!!!!!!!!
