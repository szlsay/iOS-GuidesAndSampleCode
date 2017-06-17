## 1.Multitasking Enhancements for iPad

iPad的多任务增强功能

iOS 9 enhances the user’s multitasking experience on iPad with Slide Over, Split View, and Picture in Picture. The Slide Over feature lets users pick a secondary app and quickly interact with it. The Split View feature gives users the ability to use two apps side by side on iPad Air 2. The Picture in Picture feature (also known as PiP) lets users watch video in a window that floats above other onscreen apps.

Users decide when they want to view two apps on the screen at the same time; you have no control over when this happens. Even though Split View and Slide Over are user-controlled, there are a few things you need to do to ensure that users have a great multitasking experience.

It’s crucial that your app use system resources efficiently so that it can run well when it shares the system with another running app. Under memory pressure, the system preemptively quits the app that’s consuming the most memory. For some guidance on creating energy efficient iOS apps that perform well, see Energy Efficiency Guide for iOS Apps.

If you haven’t already, be sure to adopt size classes so that your app looks good when the user decides to view it in a portion of the device screen.

To learn more about preparing your app to respond well when users use Split View and Slide Over, see Adopting Multitasking Enhancements on iPad.

As with Split View and Slide Over, users control whether they want to use PiP to view a video on top of another running app. If video playback is not your app's primary functionality, there’s nothing you need to do to support the PiP experience.

To participate when users choose Picture in Picture, use AVKit or AV Foundation APIs. The video playback classes defined in the Media Player framework are deprecated in iOS 9 and do not support PiP. To learn how to prepare your video playback app for PiP, see Picture in Picture Quick Start.

iOS 9通过幻灯片，分割视图和画中画增强了iPad上用户的多任务体验。 “幻灯片放映”功能可让用户选择辅助应用程序并快速与其进行交互。拆分视图功能使用户能够在iPad Air 2上并行使用两个应用程序。“Picture in Picture”功能（也称为PiP）可让用户在一个漂浮在其他屏幕应用程序上方的视窗中观看视频。

用户决定何时同时在屏幕上查看两个应用程序;您无法控制这种情况。即使拆分视图和幻灯片是用户控制的，您需要做一些事情来确保用户拥有丰富的多任务体验。

至关重要的是，您的应用程序有效地使用系统资源，以便在与其他正在运行的应用程序共享系统时运行良好。在内存压力下，系统抢先退出占用最多内存的应用程序。有关创建效能良好的节能iOS应用程序的一些指导，请参阅iOS Apps的能效指南。

如果您还没有，请务必使用大小类，以便当用户决定在设备屏幕的一部分中查看时，您的应用程序看起来不错。

要了解有关准备应用程序以更好地响应用户使用“分割视图”和“幻灯片”功能的详细信息，请参阅在iPad上采用多任务增强功能。

与拆分视图和幻灯片一样，用户可以控制是否要使用PiP在另一个正在运行的应用程序之上查看视频。如果视频播放不是您的应用程序的主要功能，则无需为此来支持PiP体验。

要在用户选择“画中画”时参与，请使用AVKit或AV Foundation API。媒体播放器框架中定义的视频播放类在iOS 9中已被弃用，不支持PiP。要了解如何为PiP准备视频播放应用程序，请参阅画中画快速入门。

## 2.3D Touch

3D Touch gives iOS 9 users an additional interaction dimension. On supported devices, people can quickly choose app-specific actions from the Home screen by pressing on the app icon. Within an app, people can use various pressures to get a preview of an item, open the item in a separate view, and access related actions.

iOS 9 provides the following 3D Touch APIs:

The Home screen quick action API is for adding shortcuts to your app icon that anticipate and accelerate a user’s interaction with your app (see the UIApplicationShortcut* APIs, such as UIApplicationShortcutItem.)

The UIKit peek and pop APIs let you provide easy access to additional content within your app, while maintaining the user’s context (see UIViewControllerPreviewing, UIViewControllerPreviewingDelegate, and new methods in UIViewController). Use the peek quick actions API to provide a press-enabled replacement to your app’s touch-and-hold actions (see the UIPreview* APIs, such as UIPreviewAction and UIPreviewActionItem).

The web view peek and pop API lets you enable previews of HTML link destinations (see WKWebView).

The UITouch force properties let you add customized force-based user interaction to your app.

No matter which of these APIs you adopt, your app must check the availability of 3D Touch at runtime. To learn more about supporting 3D Touch, see Adopting 3D Touch on iPhone. For some examples of using 3D Touch APIs in your app, see ApplicationShortcuts: Using UIApplicationShortcutItem and ViewControllerPreviews: Using the UIViewController previewing APIs.

3D Touch为iOS 9用户提供了额外的互动维度。在受支持的设备上，人们可以通过按下应用程序图标从主屏幕快速选择特定于应用的操作。在应用程序中，人们可以使用各种压力来获取项目的预览，在单独的视图中打开项目，并访问相关操作。

iOS 9提供以下3D Touch API：

主屏幕快速操作API是为您的应用程序图标添加快捷方式，以预测和加速用户与您的应用程序的交互（请参阅UIApplicationShortcut * API，如UIApplicationShortcutItem）。

UIKit窥视和流行的API可让您轻松访问应用程序中的其他内容，同时维护用户的上下文（请参阅UIViewControllerPreviewing，UIViewControllerPreviewingDelegate和UIViewController中的新方法）。使用窥视快速API可以为您的应用的触摸和按住动作提供按键功能（请参阅UIPreview * API，如UIPreviewAction和UIPreviewActionItem）。

网络视图偷看和弹出API允许您启用HTML链接目的地的预览（请参阅WKWebView）。

通过UITouch强制属性，您可以添加自定义的基于力的用户交互到您的应用程序。

无论您采用哪些API，您的应用都必须在运行时检查3D Touch的可用性。要了解有关支持3D Touch的更多信息，请参阅iPhone上采用3D Touch。有关在应用程序中使用3D Touch API的一些示例，请参阅ApplicationShortcuts：使用UIApplicationShortcutItem和ViewControllerPreviews：使用UIViewController预览API。

## 3.Search

Search in iOS 9 gives users great new ways to access information inside of your app, even when it isn’t installed. When you make your content searchable, users can access activities and content deep within your app through Spotlight and Safari search results, Handoff, and Siri suggestions. Using APIs related to search, you decide what content gets indexed, what information to show in search results, and where the user is redirected after tapping a result from your app or website.

Integrating with search in iOS 9 is easy: You don’t need any prior experience with implementing search, and most developers find that it takes only a few hours to make their content universally searchable. To learn how to make your app and website content searchable, see App Search Programming Guide.

Privacy is an essential feature of search in iOS 9. To give users the best search experience while protecting their private data, iOS 9 makes the following indexes available:

A private on-device index. Each device contains a private index whose information is never shared with Apple or synced between devices. When you make an item available in a user’s on-device index, only that user can view the item in search results.

Apple’s server-side index. The server-side index stores only publicly available data that you’ve marked appropriately on your website.

iOS 9 provides the following APIs to help you make your content searchable:

The NSUserActivity class includes new methods and properties that help you index items as users perform activities in your app such as visiting a navigation point or creating and viewing content. Just about every app can take advantage of the NSUserActivity APIs to make useful content available to users.

The Core Spotlight framework (CoreSpotlight.framework) provides APIs that help you add app-specific content to the on-device index and enable deep links into your app. To learn more about Core Spotlight APIs, see Core Spotlight Framework Reference.

Web markup lets you make your related web content searchable and helps you enrich the user’s search experience. To learn how to mark up your website, see Mark Up Web Content.

In addition, adding a Smart App Banner gives users an easy way to link directly to your app (to learn how to use a Smart App Banner, see Promoting Apps with Smart App Banners).

Universal links let you replace custom URL schemes with standard HTTP or HTTPS links. Universal links work for all users: If users have your app installed, the link takes them directly into your app; if they don’t have your app installed, the link opens your website in Safari. To learn more about universal links, see Support Universal Links.

在iOS 9中搜索即使没有安装，也可以让用户使用很好的新方式来访问应用内的信息。当您可以搜索内容时，用户可以通过Spotlight和Safari搜索结果，Handoff和Siri建议来访问应用程序内的活动和内容。使用与搜索相关的API，您可以决定在搜索结果中显示什么内容，在搜索结果中显示哪些信息，以及在从应用或网站点击结果后重定向用户。

与iOS 9中的搜索集成很容易：您不需要任何以前的实施搜索经验，大多数开发人员发现只需几个小时才能使其内容普遍可搜索。要了解如何使您的应用和网站内容可搜索，请参阅应用搜索编程指南。

隐私是iOS 9中搜索的重要特征。为了给用户提供最佳的搜索体验，同时保护他们的私人数据，iOS 9使以下索引可用：

私有设备上的索引。每个设备都包含一个私有索引，其信息不会与Apple共享或在设备之间同步。当您在用户的设备上索引中可以使用某个项目时，只有该用户可以在搜索结果中查看该项目。

苹果的服务器端索引。服务器端索引仅存储您在网站上适当标记的公开数据。

iOS 9提供以下API以帮助您使内容可搜索：

NSUserActivity类包括新的方法和属性，可帮助您在用户执行应用程序中的活动时索引项目，例如访问导航点或创建和查看内容。关于每个应用程序都可以利用NSUserActivity API来为用户提供有用的内容。

Core Spotlight框架（CoreSpotlight.framework）提供了API，可帮助您将特定于应用的内容添加到设备上的索引中，并启用到应用程序的深层链接。要了解有关Core Spotlight API的更多信息，请参阅Core Spotlight Framework Reference。

网页标记可让您使您的相关网页内容可搜索，并帮助您丰富用户的搜索体验。要了解如何标记您的网站，请参阅标记Web内容。

另外，添加智能应用横幅可以让用户轻松地直接链接到您的应用程序（了解如何使用智能应用横幅，请参阅使用智能应用横幅推广应用）。

通用链接可以用标准的HTTP或HTTPS链接替换自定义URL方案。通用链接适用于所有用户：如果用户安装了您的应用程序，该链接将直接导入您的应用程序;如果没有安装您的应用程序，该链接将在Safari中打开您的网站。要了解有关通用链接的更多信息，请参阅支持通用链接。

## 4.Gaming

iOS 9 includes several technology improvements that make it easier than ever to implement your game’s graphics and audio features. Take advantage of high-level frameworks for ease-of-development, or use new low-level enhancements to harness the power of the GPU.

iOS 9包括几项技术改进，使您的游戏的图形和音频功能更容易实现。 利用高级框架轻松开发，或使用新的低级增强功能来利用GPU的强大功能。

### 4.1 GameplayKit

The GameplayKit framework (GameplayKit.framework) provides foundational technologies for building games. Use GameplayKit to develop gameplay mechanics, and combine it with any high-level graphics engine—such as SceneKit or SpriteKit—to build a complete game. This framework provides building blocks for creating games with modular architecture, including:

Randomization tools for adding unpredictability to gameplay without compromising debugging

Entity-component architecture to design gameplay code for better reusability

State machines for untangling complex procedural code in gameplay systems

GameplayKit also includes standard implementations of common gameplay algorithms, so you can spend less time reading white papers and more time working on the mechanics that make your game unique. Several of the standard algorithm implementations in GameplayKit are listed below.

A minmax artificial intelligence for adversarial turn-based games.

An agent simulation that lets you describe movement behaviors in terms of high-level goals to be automatically pursued.

Rule systems for building data-driven game logic, fuzzy reasoning, and emergent behavior.

To learn more about GameplayKit, see GameplayKit Programming Guide and GameplayKit Framework Reference. To see GameplayKit in action, download the sample code projects FourInARow: Using the GameplayKit Minmax Strategist for Opponent AI, AgentsCatalog: Using the Agents System in GameplayKit, and DemoBots: Building a Cross Platform Game with SpriteKit and GameplayKit.

### 4.2 Model I/O

The Model I/O framework (ModelIO.framework) provides a system-level understanding of 3D model assets and related resources. You can use this framework for several types of tasks, such as:

Importing mesh data, material descriptions, lighting and camera settings, and other scene information from file formats used by popular authoring software and game engines

Processing or generating such data—for example, to bake lighting information into a mesh, or create procedural sky textures

Together with MetalKit, GLKit, or SceneKit APIs, efficiently loading asset data into GPU buffers for rendering

Exporting processed or generated asset data to any of several file formats

To learn more about Model I/O, see ModelIO Framework Reference.

### 4.3 MetalKit

The MetalKit framework (MetalKit.framework) provides a set of utility functions and classes that reduce the effort required to create a Metal app. MetalKit provides development support for three key areas:

Texture loading helps your app easily and asynchronously load textures from a variety of sources. Common file formats such as PNG and JPEG are supported, as well as texture-specific formats such as KTX and PVR.

Model handling provides Metal-specific functionality that makes it easy to interface with Model I/O assets. Use these highly-optimized functions and objects to transfer data efficiently between Model I/O meshes and Metal buffers.

View management provides a standard implementation of a Metal view that drastically reduces the amount of code needed to create a graphics-rendering app.

To learn more about MetalKit APIs, see MetalKit Framework Reference. For more information about Metal in general, see Metal Programming Guide, Metal Framework Reference, and Metal Shading Language Guide.

### 4.4 Metal Performance Shaders

The Metal Performance Shaders framework (MetalPerformanceShaders.framework) provides highly-optimized compute and graphics shaders that are designed to integrate easily and efficiently into your Metal app. These data-parallel shaders are specially tuned to take advantage of the unique hardware characteristics of each Metal-supported iOS GPU.

Use the Metal Performance Shader classes to achieve optimal performance for all supported hardware, without having to target or update your shader code to specific iOS GPU families. MetalPerformanceShader objects fit seamlessly into your Metal apps and can be used with Metal resource objects such as buffers and textures.

Common shaders provided by the Metal Performance Shader framework include:

Gaussian blur—provided by the MPSImageGaussianBlur class.

Image histogram—provided by the MPSImageHistogram class.

Sobel edge detection—provided by the MPSImageSobel class.

### 4.5 New Features in Metal

The Metal framework (Metal.framework) adds new features to make your graphics-rendering apps look even better and be more performant. These features include:

Improvements to the Metal Shading Language and Metal Standard Library

Compute shaders can now write to a wider range of pixel formats

The addition of private and depth stencil textures to align with OS X

The addition of depth clamping and separate front and back stencil reference values for improved shadow quality

### 4.6 New Features in SceneKit

The SceneKit framework (SceneKit.framework) includes new features in iOS 9, including:

Metal rendering support. See the SCNView and SCNSceneRenderer classes to enable high-performance Metal rendering on supported devices.

A new Scene Editor in Xcode. Build games and interactive 3D apps in less time and with less code by designing scenes in Xcode (for a related sample code project, download Fox: Building a SceneKit Game with the Xcode Scene Editor).

Positional audio. See the SCNAudioPlayer and SCNNode classes to add spatial audio effects that automatically track the listener’s position in a scene.

For details on these and many other new features, see SceneKit Framework Reference.

### 4.7 New Features in SpriteKit

The SpriteKit framework (SpriteKit.framework) includes new features in iOS 9, such as:

Metal rendering support. On devices that support Metal, metal rendering is automatically used, even in cases where you are using custom OpenGL ES shaders.

An improved Scene Editor and a new Action Editor in Xcode. Build games and interactive 2D apps in less time and with less code by designing scenes in Xcode (for a related sample project, download DemoBots: Building a Cross Platform Game with SpriteKit and GameplayKit.)

Camera nodes (that is, SKCameraNode objects) make it even easier to create scrolling games. Simply drop a camera node into your scene and set the scene’s camera property.

Positional audio. To learn how to add spatial audio effects that automatically track the listener’s position in a scene, see SKAudioNode Class Reference.

For details on these and many other new features, see SpriteKit Framework Reference.

## 5.App Thinning

应用薄化

App thinning helps you develop apps for diverse platforms and deliver an optimized installation automatically. App thinning includes the following elements:

Slicing. Artwork incorporated into the Asset Catalog and tagged for a platform allows the App Store to deliver only what is needed for installation.

On-Demand Resources. Host additional content for your app in the iTunes App Store repository, allowing it to fetch resources as needed using asynchronous download and installation. To learn more about this technology, see On-Demand Resources Guide.

Bitcode. Archive your app for submission to the App Store in an intermediate representation, which is compiled into 64- or 32-bit executables for the target devices when delivered.

To learn more about app thinning, see App Thinning (iOS, watchOS).

应用程序瘦化可帮助您开发各种平台的应用程序，并自动提供优化的安装。 应用程序稀疏包括以下元素：

切片。 合并到资产目录中并标记为平台的图稿允许App Store仅提供安装所需的内容。

按需资源。 在iTunes App Store存储库中为您的应用程序添加其他内容，使其可以根据需要使用异步下载和安装来获取资源。 要了解有关此技术的更多信息，请参阅“On-Demand资源指南”。

位码。 存档您的应用程序以中间表示形式提交到App Store，该代码在传送时被编译为目标设备的64位或32位可执行文件。

要了解有关应用程序稀疏的更多信息，请参阅App Thinning（iOS，watchOS）。

## 6.Support for Right-to-Left Languages

支持从右至左的语言

iOS 9 brings comprehensive support for right-to-left languages, which makes it easier for you to provide a flipped user interface. For example:

Standard UIKit controls automatically flip in a right-to-left context.

UIView defines semantic content attributes that let you specify how particular views should appear in a right-to-left context.

UIImage adds the imageFlippedForRightToLeftLayoutDirection method, which makes it easy to flip an image programmatically when appropriate.

To learn more about providing a flipped user interface, see Supporting Right-to-Left Languages.

iOS 9全面支持从右到左的语言，这使您更容易提供翻转的用户界面。 例如：

标准的UIKit控件会自动从右到左的上下文翻转。

UIView定义语义内容属性，您可以指定特定视图在右对齐上下文中的显示方式。

UIImage添加了imageFlippedForRightToLeftLayoutDirection方法，这样可以在适当的情况下以编程方式翻转图像。

要了解有关提供翻转用户界面的更多信息，请参阅支持从右到左的语言。

## 7.App Transport Security

应用程序运输安全

App Transport Security (ATS) enforces best practices in the secure connections between an app and its back end. ATS prevents accidental disclosure, provides secure default behavior, and is easy to adopt; it is also on by default in iOS 9 and OS X v10.11. You should adopt ATS as soon as possible, regardless of whether you’re creating a new app or updating an existing one.

If you’re developing a new app, you should use HTTPS exclusively. If you have an existing app, you should use HTTPS as much as you can right now, and create a plan for migrating the rest of your app as soon as possible. In addition, your communication through higher-level APIs needs to be encrypted using TLS version 1.2 with forward secrecy. If you try to make a connection that doesn't follow this requirement, an error is thrown. If your app needs to make a request to an insecure domain, you have to specify this domain in your app's Info.plist file.

应用程序传输安全（ATS）在应用程序及其后端之间的安全连接中实施最佳做法。 ATS防止意外泄露，提供安全的默认行为，易于采用; 默认情况下，在iOS 9和OS X v10.11中也是这样。 您应该尽快采用ATS，无论您是创建新应用还是更新现有应用。

如果您正在开发新的应用程序，则应该专门使用HTTPS。 如果您有现有的应用程序，则应尽可能使用HTTPS，并尽可能快地迁移其余的应用程序。 此外，您通过更高级别的API进行通信需要使用TLS版本1.2进行加密，具有前瞻性的保密性。 如果您尝试建立不符合此要求的连接，则会抛出错误。 如果您的应用需要向不安全的域发出请求，则必须在应用的Info.plist文件中指定此域。

## 8.Extension Points

扩展点

iOS 9 introduces several new extension points (an extension point defines usage policies and provides APIs to use when you create an app extension for that area). Specifically:

Network extension points:

Use the Packet Tunnel Provider extension point to implement the client side of a custom VPN tunneling protocol.

Use the App Proxy Provider extension point to implement the client side of a custom transparent network proxy protocol.

Use the Filter Data Provider and the Filter Control Provider extension points to implement dynamic, on-device network content filtering.

Each of the network extension points requires special permission from Apple.

Safari extension points:

Use the Shared Links extension point to enable users to see your content in Safari's Shared Links.

Use the Content Blocking extension point to give Safari a block list describing the content that you want to block while your users are browsing the web.

The Index Maintenance extension point to support the reindexing of app data without launching the app.

The Audio Unit extension point allows your app to provide musical instruments, audio effects, sound generators, and more for use within apps like GarageBand, Logic, and other Audio Unit host apps. The extension point also brings a full audio plug-in model to iOS and lets you sell Audio Units on the App Store.

To learn more about creating app extensions in general, see App Extension Programming Guide.

iOS 9引入了几个新的扩展点（扩展点定义了使用策略，并提供了为该区域创建应用程序扩展时使用的API）。特别：

网络扩展点：

使用分组隧道提供商扩展点来实现自定义VPN隧道协议的客户端。

使用App Proxy Provider扩展点实现自定义透明网络代理协议的客户端。

使用过滤器数据提供程序和过滤器控制提供程序扩展点来实现动态的设备上网络内容过滤。

每个网络扩展点都需要Apple的特别许可。

Safari扩展点：

使用共享链接扩展点可以让用户在Safari的共享链接中查看您的内容。

使用内容阻止扩展点给Safari一个阻止列表，描述在用户浏览网页时要阻​​止的内容。

索引维护扩展点，以支持应用程序数据的重新索引，而不启动应用程序。

音频单元扩展点允许您的应用程序提供乐器，音频效果，声音发生器等，以便在像GarageBand，Logic和其他音频单元主机应用程序之类的应用程序中使用。扩展点还为iOS提供了完整的音频插件模型，并允许您在App Store上销售音频单元。

要了解有关创建应用程序扩展的更多信息，请参阅App Extension编程指南。

## 9.Contacts and Contacts UI

联系人和联系人UI

iOS 9 introduces the Contacts and Contacts UI frameworks (Contacts.framework and ContactsUI.framework), which provide modern object-oriented replacements for the Address Book and Address Book UI frameworks. To learn more, see Contacts Framework Reference and ContactsUI Framework Reference.

iOS 9引入了联系人和联系人UI框架（Contacts.framework和ContactsUI.framework），它们为通讯簿和通讯录UI框架提供了现代的面向对象替代。 要了解更多信息，请参阅联系人框架参考和ContactsUI框架参考。

## 10.Watch Connectivity

Watch 连接

The Watch Connectivity framework (WatchConnectivity.framework) provides two-way communication between an iPhone and a paired Apple Watch. Use this framework to coordinate activities between your iOS app and your corresponding Watch app. The framework supports immediate messaging between the apps when they are both running, and background messaging in other cases. To learn more, see Watch Connectivity Framework Reference.

Watch Connectivity框架（WatchConnectivity.framework）提供iPhone和配对Apple Watch之间的双向通信。 使用此框架来协调iOS应用和相应的Watch应用之间的活动。 该框架支持应用程序在运行时立即发送消息，并在其他情况下支持后台消息传递。 要了解更多信息，请参阅Watch Connectivity Framework Reference。

## 11.Keychain
钥匙扣

The keychain provides more item protection options and a new type of encryption keys owned by the secure enclave. Specifically:

New constraints for access control lists that allow creating constraints with Touch ID only or passcode only.

A new Touch ID constraint that invalidates keychain items when a fingerprint is added or removed.

Support for app-provided entropy for keychain item encryption using the Application Password option of the access control list.

Support for an authentication context that lets you invoke the authentication separately from SecItem calls.

Support for keys generated and used inside the secure enclave using the kSecAttrTokenIDSecureEnclave attribute. Note that access to these keys can be controlled by all constraints supported by access control lists.

钥匙串提供更多的项目保护选项和安全飞地拥有的新型加密密钥。 特别：

访问控制列表的新限制，允许仅使用Touch ID或密码创建约束。

新的Touch ID约束，当添加或删除指纹时，钥匙串项目无效。

使用访问控制列表的“应用密码”选项支持应用提供的熵来进行钥匙串项加密。

支持身份验证上下文，允许您从SecItem调用中单独调用身份验证。

支持使用kSecAttrTokenIDSecureEnclave属性在安全飞地内生成和使用的密钥。 请注意，访问这些密钥可以由访问控制列表支持的所有约束来控制。

## 12.Swift Enhancements

To learn about what’s new in Swift, see Swift Language.

## 13.Additional Framework Changes

额外的框架更改

In addition to the major changes described above, iOS 9 includes many other improvements.

除了上述主要变化之外，iOS 9还包括许多其他改进。

## 13.1 AV Foundation Framework

The AV Foundation framework (AVFoundation.framework) adds new AVSpeechSynthesisVoice API that lets you specify a voice by identifier, instead of by language. You can also use the name and quality properties to get information about a voice.

AV基础框架（AVFoundation.framework）添加了新的AVSpeechSynthesisVoice API，可以通过标识符而不是语言指定语音。 您还可以使用名称和质量属性来获取有关语音的信息。

## 13.2 AVKit Framework

The AVKit framework (AVKit.framework) includes the AVPictureInPictureController and AVPlayerViewController classes, which help you participate in Picture in Picture. For more information about Picture in Picture, see Multitasking Enhancements for iPad.

AVKit框架（AVKit.framework）包括AVPictureInPictureController和AVPlayerViewController类，可帮助您参与画中画。 有关画中画的更多信息，请参阅iPad的多任务增强功能。

## 13.3 CloudKit Framework

If you have a CloudKit app, you can use CloudKit web services or CloudKit JS, a JavaScript library, to provide a web interface for users to access the same data as your app. You must have the schema for your databases already created to use a web interface to fetch, create, update, and delete records, zones, and subscriptions. For more information, see CloudKit JS Reference, CloudKit Web Services Reference, and CloudKit Catalog: An Introduction to CloudKit (Cocoa and JavaScript) .

如果您有一个CloudKit应用程序，则可以使用CloudKit Web服务或JavaScript库中的CloudKit JS为用户提供一个Web界面，以便您访问与应用程序相同的数据。 您必须具有已创建的数据库模式才能使用Web界面来提取，创建，更新和删除记录，区域和订阅。 有关更多信息，请参阅CloudKit JS参考，CloudKit Web服务参考和CloudKit目录：CloudKit（Cocoa和JavaScript）简介。

## 13.4 Foundation Framework

The Foundation framework (Foundation.framework) includes the following enhancements:

APIs for on-demand loading of NSBundle resources.

Strings file support for context-dependent variable width strings.

NSProcessInfo APIs for power and thermal management.

基础框架（Foundation.framework）包括以下增强功能：

用于按需加载NSBundle资源的API。

字符串文件支持上下文相关的可变宽度字符串。

用于电源和热管理的NSProcessInfo API。

## 13.5 HealthKit Framework

The HealthKit framework (HealthKit.framework) includes the following enhancements:

New support for tracking areas such as reproductive health and UV exposure. To learn about the new constants that describe characteristics, quantities, and other items, see HealthKit Constants Reference.

New support for bulk-deleting entries and tracking deleted entries. For more information, see HKDeletedObject, HKAnchoredObjectQuery, and the deleteObjects:withCompletion: and deleteObjectsOfType:predicate:withCompletion: methods in HKHealthStore Class Reference.

HealthKit框架（HealthKit.framework）包括以下增强功能：

跟踪生殖健康和紫外线辐射等领域的新支持。 要了解描述特征，数量和其他项目的新常量，请参阅“HealthKit常量参考”。

新增支持批量删除条目和跟踪已删除的条目。 有关详细信息，请参阅HKHealthStore类参考中的HKDeletedObject，HKAnchoredObjectQuery和deleteObjects：withCompletion：和deleteObjectsOfType：predicate：withCompletion：methods。

## 13.6 Local Authentication Framework

The Local Authentication framework (LocalAuthentication.framework) includes the following enhancements:

The ability to get a representation of the current set of enrolled fingers so that apps can change behavior when a finger is enrolled or removed.

Support for canceling a user prompt from code.

Support for evaluating keychain access control lists and the use of an authentication context in keychain calls.

Support for reusable Touch ID matches. A match from the previous phone unlock can be used by evaluateAccessControl: and evaluatePolicy:localizedReason:reply:.

本地认证框架（LocalAuthentication.framework）包括以下增强功能：

获得当前注册手指的表示的能力，以便应用程序可以在手指登记或删除时更改行为。

支持从代码中取消用户提示。

支持评估钥匙串访问控制列表以及在钥匙串调用中使用身份验证上下文。

支持可重复使用的Touch ID匹配。 evaluateAccessControl可以使用以前的手机解锁中的一个匹配：和evaluatePolicy：localizedReason：reply :.

## 13.7 MapKit Framework

The MapKit framework (MapKit.framework) includes several additions that help you provide a richer user experience. Specifically:

MapKit supports querying transit ETAs and launching Maps into transit directions.

Map views support a 3D flyover mode.

Annotations can be fully customized.

Search results for MapKit and CLGeocoder can provide a time zone for the result.

MapKit框架（MapKit.framework）包含几个附加功能，可帮助您提供更丰富的用户体验。 特别：

MapKit支持查询中转ETA并将地图启动到运输方向。

地图视图支持3D天桥模式。

注释可以完全定制。

MapKit和CLGeocoder的搜索结果可以为结果提供时区。

## 13.8 PassKit Framework

The PassKit framework (PassKit.framework) includes several additions that support enhancements in Apple Pay. Specifically:

In iOS 9, Apple Pay supports Discover cards and store debit and credit cards. For more information, see “Payment Networks” in PKPaymentRequest Class Reference.

Card issuers and payment networks can add cards to Apple Pay directly in their apps. For more information, see PKAddPaymentPassViewController Class Reference.

PassKit框架（PassKit.framework）包含几项支持Apple Pay增强功能的补充。 特别：

在iOS 9中，Apple Pay支持Discover卡和存储借记卡和信用卡。 有关详细信息，请参阅PKPaymentRequest类参考中的“付款网络”。

发卡机构和支付网络可以在他们的应用程序中直接向Apple Pay添加卡片。 有关更多信息，请参阅PKAddPaymentPassViewController类参考。

## 13.9 Safari Services Framework

The Safari Services framework (SafariServices.framework) includes the following enhancement.

SFSafariViewController can be used to display web content within your app. It shares cookies and other website data with Safari, and has many of Safari's great features, such as Safari AutoFill and Safari Reader. Unlike Safari itself, the SFSafariViewController UI is tailored for displaying a single page, featuring a Done button that takes users back to where they were in your app.

If your app displays web content, but does not customize that content, consider replacing your WKWebView or UIWebView-based browsers with SFSafariViewController.

Safari Services框架（SafariServices.framework）包含以下增强功能。

SFSafariViewController可用于在您的应用程序中显示网页内容。 它与Safari共享Cookie和其他网站数据，并具有许多Safari的伟大功能，例如Safari AutoFill和Safari Reader。 与Safari本身不同，SFSafariViewController UI是针对显示单个页面量身定制的，其中包含一个完成按钮，可将用户带回您应用的位置。

如果您的应用程序显示Web内容，但不自定义该内容，请考虑使用SFSafariViewController替换WKWebView或基于UIWebView的浏览器。

## 13.10 UIKit Framework

The UIKit framework (UIKit.framework) includes many enhancements, such as:

The UIStackView class, which helps you manage a set of subviews as a stack that can be arranged vertically or horizontally.

New layout anchors in UIView (such as leadingAnchor and widthAnchor), NSLayoutAnchor, and NSLayoutDimension, all of which help make layout easy.

New layout guides that help you adopt readable content margins and define where within a view the content should draw. For more information, see UILayoutGuide.

A new UIApplicationDelegate method you can use to open a document (and modify it) in place, instead of working with a copy of the document. To support the open-in-place functionality, an app also adds to its Info.plist file the LSSupportsOpeningDocumentsInPlace key with a value of YES.

The UITextInputAssistantItem class, which helps you lay out bar button groups in the shortcuts bar.

Enhancements to touch events, such as the ability to get access to intermediate touches that may have occurred since the last refresh of the display and touch prediction.

Enhancements to UIKit Dynamics, such as support for nonrectangular collision bounds, the new UIFieldBehavior class, which supports various field types in addition to being customizable, and additional attachment types in UIAttachmentBehavior.

The new behavior property in UIUserNotificationAction, which lets you support text input from users in notifications.

The new NSDataAsset class, which makes it easy to fetch content tailored to the memory and graphics capabilities of your device.

All standard UIKit controls flip appropriately to support right-to-left languages. In addition, navigation, gestures, collection views, and table cell layouts also flip appropriately.


UIKit框架（UIKit.framework）包含许多增强功能，如：

UIStackView类可帮助您将一组子视图作为可以垂直或水平排列的堆栈进行管理。

UIView中的新布局锚点（如leadAnchor和widthAnchor），NSLayoutAnchor和NSLayoutDimension，这些都有助于使布局变得简单。

新的布局指南，可帮助您采用可读的内容页边距，并定义视图中内容应绘制的位置。有关更多信息，请参阅UILayoutGuide。

一个新的UIApplicationDelegate方法，您可以使用它来打开文档（并修改它），而不是使用文档的副本。为了支持就地开放功能，应用程序还向其Info.plist文件添加了值为YES的LSSupportsOpeningDocumentsInPlace密钥。

UITextInputAssistantItem类可帮助您在快捷方式栏中布置条形按钮组。

触摸事件的增强功能，例如访问自上次刷新显示和触摸预测以来可能发生的中间触摸的能力。

UIKit Dynamics的增强功能，例如支持非矩形碰撞界限，新的UIFieldBehavior类，除了可自定义外，还支持各种字段类型以及UIAttachmentBehavior中的附加附件类型。

UIUserNotificationAction中的新行为属性，可让您支持用户在通知中的文本输入。

新的NSDataAsset类，可以轻松获取根据设备的内存和图形功能量身定制的内容。

所有标准的UIKit控件都适当翻转，以支持从右到左的语言。此外，导航，手势，集合视图和表格单元布局也可以适当地翻转。

## 14.Deprecated APIs

The following APIs are deprecated:

The Address Book and Address Book UI frameworks. Use the Contacts and Contacts UI frameworks instead.

The NSURLConnection API in the Foundation framework. Use NSURLSession APIs instead.

For a complete list of specific API deprecations, see iOS 9.0 API Diffs.

以下API已弃用：

通讯录和通讯录UI框架。 使用联系人和联系人UI框架。

基础架构中的NSURLConnection API。 改用NSURLSession API。

有关特定API弃用的完整列表，请参阅iOS 9.0 API差异。

