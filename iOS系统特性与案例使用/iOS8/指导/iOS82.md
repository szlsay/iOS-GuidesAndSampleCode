## 1.Apple Watch

iOS 8.2 lets you give Apple Watch users access to data and functionality related to your iOS app. The primary interface you can create is a WatchKit app, which gives users quick, focused ways to access their content without opening your iOS app on their iPhone.

You can also enhance your WatchKit app by providing two optional Apple Watch interfaces that give users timely, high-value information:

A Glance provides a screenful of meaningful information related to a WatchKit app. As its name implies, a Glance displays information that users can absorb instantly, without interaction; in fact, tapping a Glance on Apple Watch launches your WatchKit app.

A custom notification interface displays information from the local or remote notifications that get delivered to your iOS app. And if your iOS app registers for interactive notifications, you can create a custom actionable notification interface on Apple Watch that lets users take action from their wrists.

Xcode 6.2 with iOS 8.2 SDK Beta provides the templates and other tools you need to design, develop, and debug all three types of Watch interfaces. To learn how to extend your iOS app for Apple Watch, including how to set up your Xcode project, read App Programming Guide for watchOS. You can also explore the sample projects Lister: A Productivity App (Obj-C and Swift) and WatchKit Catalog: Using WatchKit Interface Elements.

As you might imagine, designing a WatchKit app is very different from designing an iOS app. For some guidance on creating an experience users will love, see Apple Watch Human Interface Guidelines. For additional design resources, such as templates and videos, visit https://developer.apple.com/watchkit/.

iOS 8.2可以让Apple Watch用户访问与您的iOS应用相关的数据和功能。您可以创建的主界面是一个WatchKit应用程序，它可以让用户快速有针对性地访问其内容，而不会在iPhone上打开iOS应用程序。

您还可以通过提供两个可选的Apple Watch界面来增强您的WatchKit应用程序，为用户提供及时，高价值的信息：

一览可以提供与WatchKit应用程序相关的一系列有意义的信息。顾名思义，一览可以显示用户可以立即吸收的信息，而无需互动;事实上，在Apple Watch手表上，可以启动您的WatchKit应用程序。

自定义通知界面显示来自您的iOS应用程序的本地或远程通知的信息。如果您的iOS应用程序注册交互式通知，您可以在Apple Watch上创建一个自定义的可操作的通知界面，让用户从手腕处采取行动。

Xcode 6.2与iOS 8.2 SDK Beta提供了设计，开发和调试所有三种类型的Watch界面所需的模板和其他工具。要了解如何扩展Apple Watch的iOS应用程序，包括如何设置您的Xcode项目，请参阅WatchOS的“应用程序编程指南”。您还可以浏览示例项目Lister：生产力应用程序（Obj-C和Swift）和WatchKit目录：使用WatchKit接口元素。

您可能会想到，设计一个WatchKit应用程序与设计iOS应用程序是非常不同的。有关创建用户将会喜欢的体验的一些指导，请参阅Apple Watch人机接口指南。有关其他设计资源（如模板和视频），请访问https://developer.apple.com/watchkit/。

## 2.WatchKit Framework

WatchKit (WatchKit.framework) is a new framework for developing interfaces for Apple Watch. To help you create, configure, and manipulate a WatchKit app, Glance, and custom notification interface, the WatchKit framework provides:

Interface controllers that you use to implement hierarchical or page-based navigation

Interface objects—such as labels, images, buttons, and tables—that let you display your content and enable interaction

You can learn more about the WatchKit objects you use to create these interfaces in Interface Navigation and Interface Objects.

WatchKit（WatchKit.framework）是开发Apple Watch界面的新框架。 为了帮助您创建，配置和操作WatchKit应用程序，扫视和自定义通知界面，WatchKit框架提供：

用于实现分层或基于页面的导航的接口控制器

界面对象（如标签，图像，按钮和表格）可让您显示内容并启用交互

您可以在界面导航和接口对象中了解更多关于用于创建这些接口的WatchKit对象。


