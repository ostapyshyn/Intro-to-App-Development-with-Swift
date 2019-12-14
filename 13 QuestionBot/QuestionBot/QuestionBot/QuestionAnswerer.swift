struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        if question.lowercased().hasPrefix("hello") {
            return "Why, hello there"
        } else if question == "Where are the cookies?" {
            return "In the cookie jar!"
        } else if question.lowercased().hasPrefix("where") {
            return "To the North!"
        } else {
            return "That really depends"
        }
    }
}
