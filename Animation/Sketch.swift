import Foundation

extension Degrees {
    func toRadians() -> Double {
        return Double(self) * Double.pi / 180.0
    }
}

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Degrees
    var y : Int
    //change in position
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 400
       
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        //check the position and reverce course
        y = Int(100*sin(0.6937*Double(2*(x).toRadians()))+250)
        
        //make loops
       
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: Int(x), centreY: y, width: 5, height: 5)
        
    }
    
}
