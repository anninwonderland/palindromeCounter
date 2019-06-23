//palindrom counter by @anninwonderland


//generate one integer number for the agent
//function takes the boundaries for generating and returns random integer value
var agentAsks: Int
var robertSays: Int

func generate(from min: Int, to max: Int) -> Int {
    return Int.random(in: min...max)
}

//returns true if the number is palindrome
func isPalindrome(x: Int) -> Bool{
    let forward = String(x)
    let backward = String(forward.reversed())
    
    return forward == backward
}

//takes number and counts the amount of palindroms
func countPalindrom(fewerThan num: Int) -> Int {
    var count = 0
    
    for number in 1...num {
        count += isPalindrome(x: number) ? 1 : 0
    }
    
    return count
}

agentAsks = generate(from: 1, to: 10000)
robertSays = countPalindrom(fewerThan: agentAsks)
