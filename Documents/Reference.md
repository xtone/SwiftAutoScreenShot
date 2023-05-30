# Reference

## Classes

### AutoScreenShot

<details>
<summary>shared</summary>

##### Explanation
shared instance for access AutoScreenShot method and property.
</details>
<br>

<details>
<summary>isSaveAllScreenShot</summary>

##### Explanation
This is a flag indicating whether to save all screenshots to the device when multiple screenshots are taken and combined for a screen that requires scrolling.
Default is false

##### Declaration
```swift
public var isSaveAllScreenShot: Bool { get set }
```
</details>

<br>

<details>
<summary>saveImageToLocal</summary>

##### Explanation
Whether to save the screenshot to the device or not.
Default is true.

##### Declaration
```swift
public var saveImageToLocal: Bool { get set }
```
</details>
<br>
<details>
<summary>setup(apiKey: projectId:)</summary>

##### Explanation
A method to prepare for using SwiftAutoScreenShot.
Please make sure to call this method before using any other methods. 

##### Declaration

```swift
public func setup(apiKey: String, projectId: String) 
```

##### Parameters
- `apiKey`: The API Key obtained from the project page
- `projectId`: The Project ID obtained form project page URL
</details>
<br>

<details>
<summary>takeScreenShot(_ :)</summary>

##### Explanation
It takes a simple one-screen screenshot.

##### Declaration

```swift
public func takeScreenShot(_ targetViewController: UIViewController)
```

##### Parameters
- `targetViewController`: The UIViewController that is the target for taking screenshots
</details>

<br>

<details>
<summary>takeScreenShotWithScroll(targetScrollView:
                                  targetViewController:
                                  outerTopOffset:
                                  outerBottomOffset:
                                  innerTopOffset:
                                  innerBottomOffset:)</summary>

##### Explanation
It takes screenshots while scrolling vertically through the screen. You specify the UIScrollView you want to scroll.

##### Declaration
```swift
public func takeScreenShotWithScroll(targetScrollView: UIScrollView, 
                                     targetViewController: UIViewController,
                                     outerTopOffset: CGFloat,
                                     outerBottomOffset: CGFloat,
                                     innerTopOffset: CGFloat,
                                     innerBottomOffset: CGFloat)
```

##### Parameters
- `targetScrollView`: The UI element in the screen that you want to scroll
- `targetViewController`: The UIViewController that is the target for taking screenshots which contains targetScrollView
- `outerTopOffset`: The height (offset) of the upper UI elements outside of the targetScrollView that you want to exclude from the screen when taking screenshots while scrolling. For example, a UINavigationBar.
- `outerBottomOffset`: A similar parameter to outerOffset, but for UI elements located at the bottom of the screen, such as a TabBar.
- `innerTopOffset`: The height (offset) of the upper UI elements inside the targetScrollView that you want to exclude from the screen when taking screenshots while scrolling. For example, a floating button at the top of the screen that follows the scroll.
- `innerBottomOFfset`: A similar parameter to innerTopOffset, but for UI elemtns located at the bottom of the screen.
</details>
<br>


<details>
<summary>takeScreenShotWithScroll(targetViewController:
                                  outerTopOffset:
                                  outerBottomOffset:
                                  innerTopOffset:
                                  innerBottomOffset:)</summary>

##### Explanation
It takes screenshots while scrolling vertically through the screen. It automatically finds the UI element to scroll from within the targetViewController.
##### Declaration
```swift
public func takeScreenShotWithScroll(targetViewController: UIViewController,
                                     outerTopOffset: CGFloat,
                                     outerBottomOffset: CGFloat,
                                     innerTopOffset: CGFloat,
                                     innerBottomOffset: CGFloat)
```
##### Parameters
Apart from the absence of the targetScrollView, it functions in the same way as the method above. 
</details>
<br>

<details>
<summary>takeScreenShotWithTableView(targetTableView:
                                     targetViewController:
                                     outerTopOffset:
                                     outerBottomOffset:
                                     innerTopOffset: 
                                     innerBottomOffset:)</summary>

##### Explanation
It takes screenshots while scrolling vertically through the screen. You specify the UITableView you want to scroll.
As a preliminary step to taking a screenshot, it scrolls the UITableView down to the bottom once. 

##### Declaration
```swift
public func takeScreenShotWithTableView(targetTableView: UITableView,
                                        targetViewController: UIViewController,
                                        outerTopOffset: CGFloat,
                                        outerBottomOffset: CGFloat,
                                        innerTopOffset: CGFloat, 
                                        innerBottomOffset: CGFloat) 
```
##### Parameters
Except for the scrolling UI changing from UIScrollView to UITableView, it is exactly the same as takeScreenShotWithScrollView.
</details>

<br>

<details>
<summary>takeScreenshotWithWebView(targetWebView,
                                   targetViewController:
                                   outerTopOffset:
                                   outerBottomOffset:
                                   innerTopOffset:
                                   innerBottomOffset:)</summary>

##### Explanation 
It takes screenshots while scrolling vertically through the screen. You specify the WKWebView you want to scroll.
Since the web content may not load in time, it scrolls the WebView to the bottom once before taking a screenshot.

##### Declaration
```swift
public func takeScreenshotWithWebView(targetWebView: WKWebView,
                                      targetViewController: UIViewController,
                                      outerTopOffset: CGFloat,
                                      outerBottomOffset: CGFloat,
                                      innerTopOffset: CGFloat,
                                      innerBottomOffset: CGFloat)
```

##### Parameters
Except for the scrolling UI changing from UIScrollView to WKWebView, it is exactly the same as takeScreenShotWithScrollView.
</details>

<br>

### SUAutoScreenShotUIViewController

<details>
<summary>takeScreenshot</summary>

##### Explanation
It takes a simple one-screen screenshot.

##### Declaration
```swift
public func takeScreenshot()
```

</details>

<br>

<details>
<summary>takeScreenShotWithScroll(outerTopOffset: 
                                  outerBottomOffset:
                                  innerTopOffset:
                                  innerBottomOffset:)</summary>

##### Explanation
This is the method to use when the screen scrolls, like in a ListView. It takes screenshots while scrolling vertically and eventually combines them to create a single screenshot.

##### Declaration
```swift
public func takeScreenShotWithScroll(outerTopOffset: CGFloat,
                                     outerBottomOffset: CGFloat,
                                     innerTopOffset: CGFloat, 
                                     innerBottomOffset: CGFloat)
```

##### Parameters
- `outerTopOffset`: The height (offset) of the upper UI elements outside of the scroll view that you want to exclude from the screen when taking screenshots while scrolling. For example, a NavigationStack.
- `outerBottomOffset`: A similar parameter to outerOffset, but for UI elements located at the bottom of the screen, such as a TabView.
- `innerTopOffset`: The height (offset) of the upper UI elements inside the scroll view that you want to exclude from the screen when taking screenshots while scrolling. For example, a floating button at the top of the screen that follows the scroll.
- `innerBottomOffset`: A similar parameter to innerTopOffset, but for UI elemtns located at the bottom of the screen.
</details>