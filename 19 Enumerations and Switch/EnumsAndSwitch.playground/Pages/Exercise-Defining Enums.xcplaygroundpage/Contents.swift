/*:
 ## Exercise: Defining Enums
 
 Get some practice defining your own enums. Remember the rules about naming enums and their cases. 
 
 - callout(Exercise): Define an enum for the compass directions: North, East, South, and West.
*/
enum Directions {
    case North, East, South, West
}


//: - callout(Exercise): Define an enum for jigsaw puzzle pieces: corner, edge, and middle.
enum PuzzlePieces {
    case corner, edge, middle
}



//: - callout(Excercise): Define an enum for the playback modes in a music app: standard, repeat, repeat all, and shuffle.
 enum PlaybackModes  {
     case standard, repeat_, repeatAll, shuffle
 }
 
 
let modes = PlaybackModes.repeat_


//: [Previous](@previous)  |  page 17 of 21  |  [Next: Exercise: Counting Chickens](@next)
