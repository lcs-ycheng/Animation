import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x1 : Int
    var y2 : Int
    var x2 : Int
    var y1 : Int
    //change in position
    var dx1 : Int //difference in x1
    var dy1 : Int//difference in y1
    var dx2: Int //difference in x2
    var dy2 : Int //difference in y2
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x1 = 250
        y1 = 100
      x2 = 10
      y2 = 10
        //set the difference for x
        dx1 = 3
        dy1 = 3
        dx2 = 4
        dy2 = 4
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x1 += dx1
        y1 += dy1
        x2 += dx2
        y2 += dy2
        
        //check the position and reverce course
        //if circle 1 go off the right edge of the screem
        if x1 > 450{
            dx1 = -2
        }
        
        //if circle 1 go off the left edge of the screem
        if x1 < 0 {
            dx1 = 2
        }
        //if circle 2 go off the right edge of the screem
        if x2 > 350{
            dx2 = -2
        }
        
        //if circle 2 go off the left edge of the screem
        if x2 < 0 {
            dx2 = 2
        }
        //if circle 1 go off the up edge of the screem
        if y1 > 450 {
            dy1 = -2
        }
        
        //if circle 1 go off the down edge of the screem
        if y1 < 0{
            dy1 = 2
        }
        //if circle 2 go off the up edge of the screem
        if y2 > 400 {
            dy2 = -2
        }
        
        //if circle 2 go off the down edge of the screem
        if y2 < 10{
            dy2 = 2
        }
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x1, centreY: 250, width: 200, height: 200)
        canvas.drawEllipse(centreX: x2, centreY: y2, width: 50, height: 50)
        
        //draw the line
        //work out the distance between these points
        
        //Get difference of the x's
        let deltaX = x1-x2
        //Get difference of the y's
        let deltaY = y1-y2
        //Get the sum of the squares
        let sumOfSquare = pow(Double(deltaX), 2) + pow(Double(deltaY), 2)

        //finally, evalluate the square root
        let result = sqrt(sumOfSquare)
        
        // draw the line
        canvas.drawLine(fromX: x1, fromY: 250, toX: x2, toY: y2)
    }
}

