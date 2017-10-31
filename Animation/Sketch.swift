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
        canvas.fillColor  = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 800, height: 600)
        canvas.fillColor = Color.black
        
        //move from left to right
        x += dx
        y += dy
        
        //check the position and reverce course
        //if we go off the right edge of the screem
        if x > 800{
            dx = -3
        }
        
        if x < 0 {
            dx = 3
        }
        
        if y > 600 {
            dy = -3
        }
        
        if y < 0 {
            dy = 3
        }

        canvas.drawShapesWithBorders = false
        
        // Move the origin to the middle of the canvasand
        canvas.translate(byX: x, byY: y)
        
        // Draw a bat relative to the origin
        canvas.fillColor = Color.black
        
        // First make an ellipse to form the body
        canvas.drawEllipse(centreX: 0, centreY: 0, width: 200, height: 100)
        
        // Now "cut out" the wings and head by overlapping circles
        canvas.fillColor = Color.white
        
        // Underside of wings
        canvas.drawEllipse(centreX: -70, centreY: -10, width: 50, height: 50) // left
        canvas.drawEllipse(centreX: -35, centreY: -10, width: 50, height: 50) // left middle
        canvas.drawEllipse(centreX: 35, centreY: -10, width: 50, height: 50) // right middle
        canvas.drawEllipse(centreX: 70, centreY: -10, width: 50, height: 50) // right
        
        // Further down
        canvas.drawEllipse(centreX: 0, centreY: -50, width: 50, height: 100) // middle
        
        // Get rid of rest further down
        canvas.drawRectangle(centreX: 0, centreY: -35, width: 200, height: 30)
        
        // Now add the head
        canvas.fillColor = Color.black
        var headVertices : [NSPoint] = []
        headVertices.append(NSPoint(x: -40, y: 40))
        headVertices.append(NSPoint(x: 40, y: 40))
        headVertices.append(NSPoint(x: 30, y: 80))
        headVertices.append(NSPoint(x: 20, y: 60))
        headVertices.append(NSPoint(x: -20, y: 60))
        headVertices.append(NSPoint(x: -30, y: 80))
        headVertices.append(NSPoint(x: -40, y: 40)) // end where we started
        canvas.drawCustomShape(with: headVertices)
}
}
