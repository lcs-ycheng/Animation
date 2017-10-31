import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle (x)
    var x : Int
    var dx : Int
// position of circle (y)
    var y : Int
    var dy : Int
  
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 600)
        
        // Set starting position
        x = 250
        y = 250
       
    
    //set difference for x and dx
        dx = 3
        dy = 3
      
    }
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        // clear the canvas
        canvas.fillColor  = Color.black
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 800, height: 600)
        
        //move from left to right
        x += dx
        y += dy
       
        //check the position and reverce course
        //if we go off the right edge of the screem
        if x > 300{
            dx = -3
        }
        
        if x < 0 {
            dx = 3
        }
        
        if y > 400 {
            dy = -3
        }
        
        if y < 0 {
            dy = 3
        
        }
        
        // No borders
        canvas.drawShapesWithBorders = false
        
        // Move the origin to the middle of the canvasand
        canvas.translate(byX: x+50, byY: y+50)
        
     
        // Draw a ghost relative to the origin
        canvas.fillColor = Color.white
        
        // First make an ellipse to form the head
        canvas.drawEllipse(centreX: 0, centreY: 0, width: 100, height: 100)
        //a recangle to form the body
        canvas.drawRectangle(centreX: 0, centreY: -40, width: 100, height: 100)
        
        // Now "cut out" the body by overlapping circles
        canvas.fillColor = Color.white
        
        // The bottom of the body
        canvas.drawEllipse(centreX: -35, centreY: -90, width: 40, height: 40) // left
        canvas.drawEllipse(centreX: 0, centreY: -90, width: 40, height: 40) //  middle
        canvas.drawEllipse(centreX: 35, centreY: -90, width: 40, height: 40) // right
        
        // The eyes and mouth
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: -20, centreY: 0, width: 10, height: 10)
        canvas.drawEllipse(centreX: 20, centreY: 0, width: 10, height: 10)
        canvas.drawEllipse(centreX: 0, centreY: -20, width: 20, height: 10)
        canvas.translate(byX: x, byY: y)
         canvas.translate(byX: x-50, byY: y-50)
        
        // Draw a ghost relative to the origin
        canvas.fillColor = Color.white
        //draw another circle
        canvas.drawEllipse(centreX: 200, centreY: 100, width: 100, height: 100)
        //a recangle to form the body
        canvas.drawRectangle(centreX: 200, centreY: 50, width: 100, height: 100)
        
        // Now "cut out" the body by overlapping circles
        canvas.fillColor = Color.white
        
        // The bottom of the body
        canvas.drawEllipse(centreX: 165, centreY: 5, width: 40, height: 40) // left
        canvas.drawEllipse(centreX: 200, centreY: 5, width: 40, height: 40) //  middle
        canvas.drawEllipse(centreX: 235, centreY: 5, width: 40, height: 40) // right
        
        // The eyes and mouth
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: 180, centreY: 100, width: 10, height: 10)
        canvas.drawEllipse(centreX: 220, centreY: 100, width: 10, height: 10)
        canvas.drawEllipse(centreX: 200, centreY: 90, width: 10, height: 20)
}
}
