/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let sleepHours = [6, 7, 8, 9, 6.5, 7, 8, 9, 6, 7.5, 6, 6.5, 9.5, 8.5, 6, 5, 7.5, 8.5, 6.5, 8, 9]

//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func howCloseToGoal(dailyNumber: Double) -> String {
    var sum: Double = 0
    for hour in sleepHours {
        sum += hour
    }
    let average: Double = sum / Double(sleepHours.count)
    print("goal -> \(dailyNumber), average -> \(average)")
    if average <= dailyNumber {
        return "You should sleep more!"
    } else {
        return "You should sleep less!"
    }
    
}

print(howCloseToGoal(dailyNumber: 8))

print("****************************")
//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for hour in sleepHours {
    print(howCloseToGoal(dailyNumber: hour))
    print(hour)
}




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
