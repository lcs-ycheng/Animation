import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    //change in position
    var dy : Int //difference in y
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        
        //set the difference for y
        dy = 2
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        
        // Change position
        y += dy
        
        //check the position and reverce course
        
        if y > 520{
            dy = -2
        }
    
       x += 1
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
