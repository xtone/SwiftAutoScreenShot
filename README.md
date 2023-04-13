# SwiftAutoScreenShot

"SwiftAutoScreenShot" is a library for semi-automatically creating and simultaneously sending screenshots of your app to the XXX service

## Features

- Semi Automatically take screenshots of your app
- Full Screen screenshots contains scroll of your app
- Automatically Upload screenshot to XXX

## Requirements

- iOS 14.0+
- Xcode 13.0+
- Swift 5.0+

## Installation

### Swift Package Manager

Add the following line to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/xtone/SwiftAutoScreenShot", from: "1.0.0")
]
```

## Usage 

### Setup

To use SwiftAutoScreenShot, first obtain the apiKey and project ID from the web page, and then perform the initialization process in the AppDelegate.

```swift
import SwiftAutoScreenShot

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    AutoScreenShot.setup(apiKey: "your api key", projectId: "your project id")
}
```

### Take Screenshot

#### no scroll view
```swift
import SwiftAutoScreenShot
import UIKit

class SampleViewController: UIViewController {

    override func viewDidAppear() {
        super.viewDidAppear()

        AutoScreenShot.shared.takeScreenShotWithoutScrollView(targetViewController: self)
    }
}

```

#### contain scroll view UIViewController

```swift
impport SwiftAutoScreenShot
import UIKit

class SampleViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidAppear() {
        super.viewDidAppear()

        // ex. get navigation bar bottom position for screenshot top offset
        guard let navigationBar = navigationController?.navigationBar else {
            return nil
        }

        let bottomPointInNavBar = CGPoint(x: 0, y: navigationBar.frame.height)
        let bottomPointInView = navigationBar.convert(bottomPointInNavBar, to: view)

        AutoScreenShot.shared.takeScreenShot(targetScrollView: scrollView,
                                             targetViewController: self,
                                             outerTopOffset: bottomPointInView.y,
                                             outerBottomOffset: 0,
                                             innerTopOffset: 0,
                                             innerBottomOffset: 0)
    }
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







