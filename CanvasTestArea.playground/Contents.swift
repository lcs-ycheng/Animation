//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// No borders
canvas.drawShapesWithBorders = false

// Move the origin to the middle of the canvasand
canvas.translate(byX: 400, byY: 300)

// Draw the axes so we can see where we are
canvas.drawAxes()

// draw the background in Black
canvas.fillColor = Color.black
canvas.drawRectangle(centreX: 0, centreY: 0, width: 800, height: 600)

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

//change color for the another circle
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
/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView
