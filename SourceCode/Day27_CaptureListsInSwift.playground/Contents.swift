import UIKit

class Singer {
  func playSong() {
    print("Shake it off!")
  }
}

func sing() -> () -> Void {
  let taylor = Singer()
  
  let singing = {
    taylor.playSong()
    return
  }
  
  return singing
}

let singFunction = sing()
singFunction()

//: ## String capturing
//: THis means the closure will capture any external values that are used inside the closure, and make sure they never get destoryed.

//: ## Weak capturing

func sing1() -> () -> Void {
  let taylor = Singer()
  
  let singing = { [weak taylor] in
    taylor?.playSong()
    return
  }
  
  return singing
}

//: ## Unowned capturing

func sing2() -> () -> Void {
  let taylor = Singer()
  let singing = { [unowned taylor] in
    taylor.playSong()
    return
  }
  return singing
}
