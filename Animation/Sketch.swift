import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    //change in position
    var dx : Int //difference in x
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        
        //set the difference for x
        dx = 3
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        
        //check the position and reverce course
        //if we go off the right edge of the screem
        if x > 500{
            dx = -3
        }
        
        //if we go off the left edge of the screem
        if x < 0 {
            dx = 3
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
    }
    
}
