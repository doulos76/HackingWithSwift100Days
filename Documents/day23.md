# Day 23

* Projects 1-3
 - What you learned
 - Key points
 - Challenge

## Whay you learned

* Table views using `UITableView`	. These ar used everywhere in iOS, and are one of the most important components on the entire platform.
* Image views using `UIImageView`, as well as the data inside them, `UIImage`. Remember: a `UIImage` contains the pixels, but a `UIImageView` displays them -ie., positions and sizes them. You also saw how iOS handles retina and retina HD screens using @2x and @3x filenames.
* Buttons using `UIButton`. These don't have any special design in iOS by default - they just look like labels, really. But they do respond when tapped, so you can take some action.
* View controllers using `UIViewController`. These give you alll thee fundamental display technology required to show one screen, including things like rotation and multi-tasking on iPad.
* System alerts using `UIAlertController`. We used this to show a score in project2, but it's helpful for any time you need the user to confirm something or make a choice.
* Navigation bar buttons using `UIBarButtonItem`. We used the built-in action icon, but there are lots of others to choose from, and you can use your own custom text if you prefer.
* Colors using `UIColor`, which we used to outline the flags with a black border. There are lots of built-in system colors to choose from, but you can also create your own.
* Sharing content to Facebook and Twitter using `UIAcitvityViewController`. This same class also handles printing, saving images to the photo library, and more.


* `IBOutlet`
* `IBAction`
* `FileManager`, `Bundle`
* `UIImage`, `CAImage`
* `Autolayout`


## Key Points

### FileManager

```Swift
let items = tyr! fm.contentsOfDirectory(atPath: path)
```

* The `fm` was a reference to `FileManager` and `path` was a reference to the resource path from `Bundle`, so that line pulled out an array of files at ethe directory where our app's resources lived.
* We cna use the `try!`	 keyword, which means "don't make me catch errors, because they won't happen."

### TableView

```Swift
override fun tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	return pictures.count
}
```

* `ViewController: UITableViewController` : 상속
* `override` keyword로 재정의
* Basic Question
  - How many sections are there?
  - How many rows?
  - What's in each row?
  - What happens when a row is tapped?


```Swift
let the cell = tableView.dequeueResusableCell(withIdentifier: "Picture", for: indexPath)

if let vc = storyboard?.instantiateViewController(withIdentifire: "Detain") as? DetailViewController {

}
```

* cell reusable identifire

## Chanllenge

 
 