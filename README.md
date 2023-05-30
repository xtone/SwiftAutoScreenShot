# SwiftAutoScreenShot

"SwiftAutoScreenShot" is a library for semi-automatically creating and simultaneously sending screenshots of your app to the XXX service

## Features

- Semi Automatically take screenshots of your app
- Full Screen screenshots contains scroll of your app
- Automatically Upload screenshot to XXX

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
    AutoScreenShot.setup(apiKey: "your api key", projectId: "your project id")
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

## known issue

Screenshots cannot be obtained in the following cases:

- Screens that scroll and include a NavigationView (https://github.com/xtone/SwiftAutoScreenShot/issues/1)









