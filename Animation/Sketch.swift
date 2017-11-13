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
    var x1 : Degrees
    var y1 : Int
    var x2 : Degrees
    var y2 : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x1 = 0
        y1 = 400
        x2 = 500
        y2 = 400
        
        //clear the background
        canvas.fillColor = Color.black
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
    }
    
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        // Change position
        x1 += 1
        x2 += -1

        //check the position and reverce course
        y1 = Int(100*sin(0.7357*Double(2*(x1).toRadians())))
        y2 = (Int(100*sin(0.7357*Double(2*(x2-490).toRadians()))))
    
        //make loops
            //change color
            canvas.drawShapesWithBorders = false
            for i in stride(from: 0, to: 450, by: 15){
            canvas.fillColor = Color(hue: i-10, saturation: 100, brightness: 100, alpha: 100)
        //when the circle is in the middle
           if x1 < 250{
            canvas.drawEllipse(centreX: Int(x1), centreY: i+y1, width: 5, height: 5)
              }
           if x2 > 250 {
                  canvas.drawEllipse(centreX: Int(x2), centreY: i+y2, width: 5, height: 5)
               }
    }
    }
    
}

