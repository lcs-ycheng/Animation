import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        //set the difference for x
        
    }
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        //change the border of the circle
       
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.purple
         canvas.borderColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        canvas.fillColor = Color.green
         canvas.borderColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.fillColor = Color.black
         canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
  
        //draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.orange
         canvas.borderColor = Color.orange
        canvas.drawEllipse(centreX: 500-x, centreY: 350, width: 50, height: 50)
        canvas.fillColor = Color.blue
         canvas.borderColor = Color.blue
        canvas.drawEllipse(centreX: 500-x, centreY: 150, width: 50, height: 50)
        
    }
    }


