import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    //change in position
    var dx : Int //difference in x
    var dy : Int //difference in y
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 250
        //set the difference for x
        dx = 3
        dy = 4

    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        y += dy
        
        //check the position and reverce course
        //if we go off the right edge of the screem
        if x > 500{
            dx = -3
        }
        
        // if we stop at the top of the screem
        if y > 500 {
            dy = -3
        }
        
        //if we go off the left edge of the screem
        if x < 0 {
            dx = 3
          
        }
        //if we stop at the bottom
        if y < 0{
            dy = 3
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
