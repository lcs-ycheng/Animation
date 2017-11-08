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
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 400
        //clear the background
        canvas.fillColor = Color.black
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
    }
    
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        // Change position
        x += 1
        
        //check the position and reverce course
        y = Int(100*sin(0.6937*Double(2*(x).toRadians())))
    
        //make loops
            //change color
            canvas.drawShapesWithBorders = false
            for i in stride(from: 0, to: 450, by: 15){
            canvas.fillColor = Color(hue: i-10, saturation: 100, brightness: 100, alpha: 100)
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: Int(x), centreY: i+y, width: 5, height: 5)
        
                
    }
    }
    
}

