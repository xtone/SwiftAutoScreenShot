### for UIKit

#### no scroll view
```swift
import SwiftAutoScreenShot
import UIKit

class SampleViewController: UIViewController {

    override func viewDidAppear() {
        super.viewDidAppear()

        AutoScreenShot.shared.takeScreenShot(self)
    }
}
```

#### A UIViewController that includes scroll view
##### When specifying a UI element to scroll
```swift
impport SwiftAutoScreenShot
import UIKit

class SampleViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidAppear() {
        super.viewDidAppear()

        // ex. get navigation bar bottom position for screenshot top offset
        guard let navigationBar = navigationController?.navigationBar else {
            return
        }

        let bottomPointInNavBar = CGPoint(x: 0, y: navigationBar.frame.height)
        // +1, because a shadow is set by default for UINavigationBar.
        let bottomPointInView = navigationBar.convert(bottomPointInNavBar, to: view).y + 1

        AutoScreenShot.shared.takeScreenShot(targetScrollView: scrollView,
                                             targetViewController: self,
                                             outerTopOffset: bottomPointInView,
                                             outerBottomOffset: 0,
                                             innerTopOffset: 0,
                                             innerBottomOffset: 0)
    }
}
``` 

##### In the case where a scrolling UI element is not specified.
It will automatically search for the UIScrollView within the UIViewController and use it as the element to scroll.
```swift
import SwiftAutoScreenShot
import UIKit

class SampleViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidAppear() {
        super.viewDidAppear()

        // ex. get navigation bar bottom position for screenshot top offset
        guard let navigationBar = navigationController?.navigationBar else {
            return
        }

        let bottomPointInNavBar = CGPoint(x: 0, y: navigationBar.frame.height)
        // +1, because a shadow is set by default for UINavigationBar.
        let bottomPointInView = navigationBar.convert(bottomPointInNavBar, to: view).y + 1
        AutoScreenShot.shared.takeScreenShotWithScroll(targetViewController: self,
                                                       outerTopOffset: bottomPointInView,
                                                       outerBottomOffset: 0,
                                                       innerTopOffset: 0,
                                                       innerBottomOffset: 0)
    }
```

#### contain table view UIViewController

```swift
import SwiftAutoScreenShot
import UIKit

class SampleViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidAppear() {
        super.viewDidAppear()

        AutoScreenShot.shared.takeScreenShotWithTableView(targetTableView: tableView,
                                                          targetViewController: self,
                                                          outerTopOffset: 0,
                                                          outerBottomOffset: 0,
                                                          innerTopOffset: 0,
                                                          innerBottomOffset: 0)
    }
}
```

### for SwiftUI

It is possible to generate screenshots of the UI created with SwiftUI.
However, there are many limitations, and in most cases it can only be used with simple screens.

#### no scroll view
```swift
import SwiftAutoScreenShot
import SwiftUI

var body: some View {
    ZStack {
        someView1
        someView2
    }
    .autoScreenShot { screenShotMaker in
        screenShotMaker.takeScreenShot()
    }
}
```


#### contain ScrollView
```swift
import SwiftAutoScreenShot
import SwiftUI

var body: some View {            
        ZStack {
            ScrollView {
                listView1
                listView2
            }
            .suAutoScreenShot { screenShotMaker in
                screenShotMaker.takeScreenShotWithScroll(outerTopOffset: 0,
                                                         outerBottomOffset: 0,
                                                         innerTopOffset: 0,
                                                         innerBottomOffset: 0)
            }
        }
}
```
