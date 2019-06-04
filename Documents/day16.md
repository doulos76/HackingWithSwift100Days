# Day 16

* Setting up
* Listing images with FileManager
* Desiging our interface

## Setting up

1. Create a new Xcode project
2. Single View Application
3. Organization Identifier : com.example (url reversed)
4. Run short Cut : `CMD`+`R`
5. Stop : `CMD`+`.`
6. Image Addition
  * Destination : Copy images if need ==> `Check`
  * Added folders: Create groups ==> `Check`

## Listing images with FileManager

1. viewDidLoad()

	- view Controller의 view가 메모리에 로드된 후에 호출됨

2. FileManager
   - FileSystem의 contents에 대한 편리한 인터페이스 및 파일 시스템과 상호 작용하는 주요 수단.


```Swift
let fm = FileManager.default
let path = Bundle.main.resourcePath!
let items = try! fm.contentsOfDirectory(atPath: path)
```

## Desiging our interface

1. StoryBoard의 ViewController를 TableViewController로 변경
2. NavigationController에 Embedded in
3. TableViewController method 추가 
  * `func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int`
  * `func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell`

  
```Swift
import UIKit

class ViewController: UITableViewController {
  var pictures = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let fm = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fm.contentsOfDirectory(atPath: path)
    
    for item in items {
      if item.hasPrefix("nssl") {
        // this is a picture to load!
        pictures.append(item)
      }
    }
    print(pictures)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
    cell.textLabel?.text = pictures[indexPath.row]
    return cell
  }
}
```