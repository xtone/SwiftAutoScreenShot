# SwiftAutoScreenShot

"SwiftAutoScreenShot" is a library for semi-automatically creating and simultaneously sending screenshots of your app to the UI SCAN service

## Features

- Semi Automatically take screenshots of your app
- Full Screen screenshots contains scroll of your app
- Automatically Upload screenshot to UI SCAN

## Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Installation

### Swift Package Manager

Add the following line to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/xtone/SwiftAutoScreenShot", .branch("main")),
]
```
or
Please select `PackageDependencies` and search for `SwiftAutoScreenShot`. Afterwards, select branch and main under Dependency Rule.

#### Info.pist
To save screenshots to your device, please set the `Privacy - Photo Library Usage Description` in your info.plist.

## Usage 

### Setup

To use SwiftAutoScreenShot, first obtain the apiKey and project ID from the web page, and then perform the initialization process in the AppDelegate.

```swift
import SwiftAutoScreenShot

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    AutoScreenShot.shared.setup(apiKey: "your api key", projectId: "your project id")
}
```

### TakeScreenShot
Below is a simple sample code for taking a screenshot.
[Please check the Usage for more details.](Documents/Usage.md)
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

Detailed references can be found [here](Documents/Reference.md).

##### Tips
[Tips is here](Documents/Tips.md)

### FAQ

#### When I run the app, it crashes. What could be the possible issue?
It is possible that the explanation for the photo app's permissions is not added to the info.plist. Please check again if "Privacy - Photo Library Usage Description" is set.


## known issue

Screenshots cannot be obtained in the following cases:

- Screens that scroll and include a NavigationView (https://github.com/xtone/SwiftAutoScreenShot/issues/1)


There may be cases where the progress indicating the upload progress of screenshots is not displayed.
- issue: https://github.com/xtone/SwiftAutoScreenShot/issues/3


Due to a bug in Xcode, it is no longer possible to specify multiple targets. This issue has been confirmed to be fixed in Xcode 14.3.
Additionally, when specifying multiple targets, please add them in the project settings under General > Frameworks, Libraries, and Embedded Content.










