# Reference

## Classes

### AutoScreenShot

<details>
<summary>shared</summary>

```
shared instance for access AutoScreenShot method and property.
```
</details>
<br>

<details>
<summary>isSaveAllScreenShot</summary>
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
A method to prepare for using SwiftAutoScreenShot.
Please make sure to call this method before using any other methods. 

##### Declaration

```swift
public func setup(apiKey: String, projectId: String) 
```

##### Parameters
- `apiKey`: The API Key obtained from the project page.
- `projectId`: The Project ID obtained form project page URL.
</details>
<br>

<details>
<summary>takeScreenShot(_ :)</summary>

##### Declaration

```swift
public func takeScreenShot(_ targetViewController: UIViewController)
```

##### Parameters
- `targetViewController`: The UIViewController that is the target for taking screenshots.
</details>