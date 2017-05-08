## 1.Apple Watch

iOS 8.2 lets you give Apple Watch users access to data and functionality related to your iOS app. The primary interface you can create is a WatchKit app, which gives users quick, focused ways to access their content without opening your iOS app on their iPhone.

You can also enhance your WatchKit app by providing two optional Apple Watch interfaces that give users timely, high-value information:

A Glance provides a screenful of meaningful information related to a WatchKit app. As its name implies, a Glance displays information that users can absorb instantly, without interaction; in fact, tapping a Glance on Apple Watch launches your WatchKit app.

A custom notification interface displays information from the local or remote notifications that get delivered to your iOS app. And if your iOS app registers for interactive notifications, you can create a custom actionable notification interface on Apple Watch that lets users take action from their wrists.

Xcode 6.2 with iOS 8.2 SDK Beta provides the templates and other tools you need to design, develop, and debug all three types of Watch interfaces. To learn how to extend your iOS app for Apple Watch, including how to set up your Xcode project, read App Programming Guide for watchOS. You can also explore the sample projects Lister: A Productivity App (Obj-C and Swift) and WatchKit Catalog: Using WatchKit Interface Elements.

As you might imagine, designing a WatchKit app is very different from designing an iOS app. For some guidance on creating an experience users will love, see Apple Watch Human Interface Guidelines. For additional design resources, such as templates and videos, visit https://developer.apple.com/watchkit/.

## 2.WatchKit Framework

WatchKit (WatchKit.framework) is a new framework for developing interfaces for Apple Watch. To help you create, configure, and manipulate a WatchKit app, Glance, and custom notification interface, the WatchKit framework provides:

Interface controllers that you use to implement hierarchical or page-based navigation

Interface objects—such as labels, images, buttons, and tables—that let you display your content and enable interaction

You can learn more about the WatchKit objects you use to create these interfaces in Interface Navigation and Interface Objects.
