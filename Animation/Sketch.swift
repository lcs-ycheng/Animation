import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    var x : Int
    var y : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
              x += 1
        let a : Double = -1/25
        
        //check the position and reverce course
        let y = Int(a*(Double(x)-50)*(Double(x)-50)+100)
       
        //make a loop
        for k in stride(from: 0, to: 500, by: 100){

        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y+k, width: 10, height: 10)
        }
    }
    
}


