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
    var x3 : Int
    var y3 : Int
    var x4 : Int
    var y4 : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x1 = 0
        y1 = 400
        x2 = 500
        y2 = 400
        x3 = 250
        y3 = 0
        x4 = 250
        y4 = 0
        
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
            // when the circle is in the middle
            if x1 < 250{
                canvas.drawEllipse(centreX: Int(x1), centreY: i+y1, width: 5, height: 5)
            }
            if x2 > 250 {
                canvas.drawEllipse(centreX: Int(x2), centreY: i+y2, width: 5, height: 5)
            }
            //make the white one
            //change position
            // Only do this when 250 frames have been already drawn
            if canvas.frameCount > 250 {
                x3 += 1
                x4 += -1
                
                let a : Double = -1/15
                //check the position and reverce course
                let y3 = Int(a*(Double(x3)-250)*(Double(x3)-300))
                let y4 = Int(a*(Double(x3)-250)*(Double(x3)-300))
                //make loops
                for k in stride(from: 0, to: 500, by: 30){
                    // Draw an ellipse in the middle of the canvas
                    canvas.fillColor = Color.white
                   
                        canvas.drawEllipse(centreX: x3, centreY: y3+k, width: 5, height: 3)
                        canvas.drawEllipse(centreX: x4, centreY: y4+k, width: 5, height: 3)
                    
                }

            }
            
        }
    }
    
}

