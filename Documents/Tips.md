# Tips

## About Arguments

### outerTopOffset
The term "outer" in outerTopOffset refers to being "outside of the UIScrollView".
By specifying only the height of the UI elements that are outside the UIScrollView and at the top among all the UI elements on the screen, you can successfully capture a screenshot. 

This is because, when capturing a screenshot while scrolling, after taking a shot of the entire screen, the image is processed by removing a height equivalent to the value of outerTopOffset and then combining the images.
Moreover, the amount of screen scrolling at one time also takes into account the value of outerTopOffset.

Usually, UINavigationBar is outer of UIScrollView.

### outerBotomOffset
The term "outer" in outerBottomOffset, like in outerTopOffset, refers to being "outside of the UIScrollView". By specifying only the height of the UI elements that are outside the UIScrollView and at the bottom among all the UI elements on the screen, you can successfully capture a screenshot. 

Similar to outerTopOffset, a process to omit a height equivalent to the value of outerBottomOffset is performed during screenshot combination. 
Moreover, the amount of screen scrolling at one time also takes into account the value of outerBottomOffset.

### innerTopOffset
The term "inner" in innerTopOffset refers to being "inside of the UIScrollView". Among all the UI elements on the screen, you specify only the height of the UI elements that are inside the UIScrollView and at the top. These UI elements at the top could be something like a UIButton element floating within the UIScrollView, for example.

While capturing a screenshot as you scroll, a process is included to omit a height equivalent to the value specified in innerTopOffset during screenshot combination. This is to prevent elements that are floating, for example, from appearing in all the screenshots.

However, unlike the "outer" argument, it does not take into account the amount of screen scrolling at one time. This is because, after all, the amount of scrolling depends on the height of the UIScrollView.

### innerBottomffset
Similar to innerTopOffset, this is used to specify the height of UI elements at the bottom of the UIScrollView. Inside the UIScrollView, and at the bottom, you often see advertisement banners or floating buttons.

When you specify the height of such UI elements, a process runs to omit that value during the screenshot combination.


## UITableView
In the method for UITableView, there is a process to scroll to the bottom once in order to determine the contentHeight of the UITableView. Please try it if the method for the regular UIScrollView does not work well.

Conversely, if you have a UITableView but the dedicated method does not work well, trying the method intended for UIScrollView may be successful.

## WKWebView
In the method for WKWebView, similar to UITableView, it initially scrolls to the bottom. This is to load the entire screen once.

Like UITableView, if it does not work well, please try using the method for UIScrollView. In that case, assign the scrollView property of the WKWebView to the targetScrollView argument.
