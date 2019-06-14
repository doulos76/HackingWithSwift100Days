# Day 27

* Projects 5, Part one
  - Capture lists in Swift: what’s the difference between weak, strong, and unowned references?
  - Setting up
  - Reading from disk: contentsOfFile
  - Pick a word, any word: UIAlertController

## Capture lists in Swift: what’s the difference between weak, strong, and unowned references?

```Swift
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
```

### Strong capturing

```Swift
func sing() -> () -> Void {
    let taylor = Singer()

    let singing = {
        taylor.playSong()
        return
    }

    return singing
}
```

### Weak Capturing

```Swift
func sing() -> () -> Void {
    let taylor = Singer()

    let singing = { [weak taylor] in
        taylor?.playSong()
        return
    }

    return singing
}
```

### Unowned Capturing

```Swift
func sing() -> () -> Void {
    let taylor = Singer()

    let singing = { [unowned taylor] in
        taylor.playSong()
        return
    }

    return singing
}
```

## Setting up

## Reading from disk: contentsOfFile

## Pick a word, any word: UIAlertController