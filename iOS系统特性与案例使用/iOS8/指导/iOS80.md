## 1.App Extensions

iOS 8 lets you extend select areas of the system by supplying an app extension, which is code that enables custom functionality within the context of a user task. For example, you might supply an app extension that helps users post content to your social sharing website. After users install and enable this extension, they can choose it when they tap the Share button in their current app. Your custom sharing extension provides the code that accepts, validates, and posts the user’s content. The system lists the extension in the sharing menu and instantiates it when the user chooses it.

In Xcode, you create an app extension by adding a preconfigured app extension target to an app. After a user installs an app that contains an extension, user enables the extension in the Settings app. When the user is running other apps, the system makes the enabled extension available in the appropriate system UI, such as the Share menu.

iOS supports app extensions for the following areas, which are known as extension points:

Share. Share content with social websites or other entities.

Action. Perform a simple task with the selected content.

Today. Provide a quick update or enable a brief task in the Today view of Notification Center.

Photo editing. Perform edits to a photo or video within the Photos app.

Storage provider. Provide a document storage location that can be accessed by other apps. Apps that use a document picker view controller can open files managed by the Storage Provider or move files into the Storage Provider.

Custom keyboard. Provide a custom keyboard that the user can choose in place of the system keyboard for all apps on the device.

Each extension point defines appropriate APIs for its purposes. When you use an app extension template to begin development, you get a default target that contains method stubs and property list settings defined by the extension point you chose.

For more information on creating extensions, see App Extension Programming Guide.

iOS 8可以通过提供应用程序扩展来扩展系统的选择区域，该应用程序扩展是在用户任务的上下文中启用自定义功能的代码。例如，您可以提供一个应用扩展程序，可以帮助用户将内容发布到您的社交共享网站。用户安装并启用此扩展后，他们可以在当前应用程序中点击“共享”按钮时选择它。您的自定义共享扩展程序提供了接受，验证和发布用户内容的代码。系统列出共享菜单中的扩展名，并在用户选择时对其进行实例化。

在Xcode中，您可以通过向应用添加预配置的应用扩展目标来创建应用扩展。用户安装包含扩展名的应用后，用户可以在“设置”应用中启用扩展。当用户运行其他应用程序时，系统会在相应的系统用户界面（如“共享”菜单）中启用已启用的扩展。

iOS支持以下区域的应用程序扩展名，这些扩展名称是扩展点：

分享。与社交网站或其他实体分享内容。

行动。使用所选内容执行简单任务。

今天。在“通知中心”的“今日”视图中提供快速更新或启用简短任务。

图片修改。对照片应用程序中的照片或视频进行编辑。

存储提供商。提供可由其他应用程序访问的文档存储位置。使用文档选择器视图控制器的应用程序可以打开存储提供商管理的文件或将文件移动到存储提供程序中。

自定义键盘。提供用户可以选择的自定义键盘，代替设备上所有应用程序的系统键盘。

每个扩展点为其目的定义适当的API。当您使用应用程序扩展模板开始开发时，您将获得包含由您选择的扩展点定义的方法存根和属性列表设置的默认目标。

有关创建扩展的更多信息，请参阅App Extension编程指南。

## 2.Touch ID Authentication

Your app can now use Touch ID to authenticate the user. Some apps may need to secure access to all of their content, while others might need to secure certain pieces of information or options. In either case, you can require the user to authenticate before proceeding.

Your app can use Touch ID to unlock individual keychain items. For a working sample, see KeychainTouchID: Using Touch ID with Keychain and LocalAuthentication.

Use the Local Authentication Framework (LocalAuthentication.framework) to display an alert to the user with an application-specified reason for why the user is authenticating. When your app gets a reply, it can react based on whether the user was able to successfully authenticate. For more information, see Local Authentication Framework Reference.

您的应用程序现在可以使用Touch ID来验证用户。 某些应用程序可能需要确保访问其所有内容，而其他应用程序可能需要确保某些信息或选项。 在这两种情况下，您可以要求用户进行身份验证。

您的应用可以使用Touch ID来解锁各个钥匙串项。 有关工作示例，请参阅KeychainTouchID：使用Touch ID与Keychain和LocalAuthentication。

使用本地身份验证框架（LocalAuthentication.framework）向用户显示一个提醒，指出了用户为什么进行身份验证的应用程序指定的原因。 当您的应用程序获得答复时，它可以根据用户是否能够成功进行身份验证进行反应。 有关详细信息，请参阅本地身份验证框架参考。

## 3.Photos

Take better photos in your app, provide new editing capabilities to the Photos app, and create new, more efficient workflows that access the user’s photo and video assets.

在您的应用程序中拍摄更好的照片，为照片应用程序提供新的编辑功能，并创建新的更有效的工作流程，以访问用户的照片和视频资源。

## 3.1 Photos Framework

The Photos framework (Photos.framework) provides new APIs for working with photo and video assets, including iCloud Photos assets, that are managed by the Photos app. This framework is a more capable alternative to the Assets Library framework. Key features include a thread-safe architecture for fetching and caching thumbnails and full-sized assets, requesting changes to assets, observing changes made by other apps, and resumable editing of asset content.

For more information, see Photos Framework Reference.

Use the related Photos UI framework (PhotosUI.framework) to create app extensions for editing image and video assets in the Photos app. For more information, see App Extension Programming Guide.

照片框架（Photos.framework）提供了新的API，用于处理由照片应用程序管理的照片和视频资产，包括iCloud照片资产。 这个框架是一个更有效的替代资产库框架。 主要功能包括线程安全架构，用于提取和缓存缩略图和全尺寸资产，请求对资产进行更改，观察其他应用所做的更改，以及对资产内容的可恢复编辑。

有关详细信息，请参阅照片框架参考。

使用相关的照片UI框架（PhotosUI.framework）创建应用程序扩展，用于在照片应用程序中编辑图像和视频资产。 有关更多信息，请参阅App Extension编程指南。

## 3.2 Manual Camera Controls

The AV Foundation framework (AVFoundation.framework) makes it easier than ever to take great photos. Your app can take direct control over the camera focus, white balance, and exposure settings. In addition, your app can use bracketed exposure captures to automatically capture images with different exposure settings.

For more information see AV Foundation Framework Reference.

AV基础框架（AVFoundation.framework）使得比以前更容易拍摄出优秀的照片。 您的应用程序可以直接控制相机对焦，白平衡和曝光设置。 此外，您的应用程序可以使用括号内的曝光拍摄来自动捕获具有不同曝光设置的图像。

有关更多信息，请参阅AV Foundation Framework Reference。

## 3.3 Improved Camera Functionality

Use the following APIs to discover and enable new camera features found on the iPhone 6 and iPhone 6 Plus:

A new property (videoHDRSupported) can determine whether a capture device supports high dynamic range streaming.

A new video stabilization mode (AVCaptureVideoStabilizationModeCinematic) provides more cinematic results in the captured video.

A new property (highResolutionStillImageOutputEnabled) can be used to set an AVCaptureStillImageOutput object to capture still pictures at a higher resolution.

A new property (autoFocusSystem) can be used to determine how the camera performs auto focusing.

使用以下API来发现和启用iPhone 6和iPhone 6 Plus上的新相机功能：

一个新的属性（videoHDRSupported）可以确定捕获设备是否支持高动态范围流。

新的视频稳定模式（AVCaptureVideoStabilizationModeCinematic）在捕获的视频中提供更多的电影结果。

可以使用新的属性（highResolutionStillImageOutputEnabled）来设置AVCaptureStillImageOutput对象以更高的分辨率捕获静态图片。

可以使用新的属性（autoFocusSystem）来确定相机执行自动对焦的方式。

## 4.Games

Technology improvements in iOS 8 make it easier than ever to implement your game’s graphics and audio features. Take advantage of high-level frameworks for ease-of-development, or use new low-level enhancements to harness the power of the GPU.

iOS 8中的技术改进使您可以轻松实现游戏的图形和音频功能。 利用高级框架轻松开发，或使用新的低级增强功能来利用GPU的强大功能。

### 4.1 Metal

Metal provides extremely low-overhead access to the A7 and A8 GPUs, enabling extremely high performance for your sophisticated graphics rendering and computational tasks. Metal eliminates many performance bottlenecks—such as costly state validation—that are found in traditional graphics APIs. Metal is explicitly designed to move all expensive state translation and compilation operations out of the critical path of your most performance sensitive rendering code. Metal provides precompiled shaders, state objects, and explicit command scheduling to ensure your application achieves the highest possible performance and efficiency for your GPU graphics and compute tasks. This design philosophy extends to the tools used to build your app. When your app is built, Xcode compiles Metal shaders in the project into a default library, eliminating most of the runtime cost of preparing those shaders.

Graphics, compute, and blit commands are designed to be used together seamlessly and efficiently. Metal is specifically designed to exploit modern architectural considerations, such as multiprocessing and shared memory, to make it easy to parallelize the creation of GPU commands.

With Metal, you have a streamlined API, a unified graphics and compute shading language, and Xcode-based tools, so you don’t need to learn multiple frameworks, languages, and tools to take full advantage of the GPU in your game or app.

For more information on using Metal, see Metal Programming Guide, Metal Framework Reference, and Metal Shading Language Guide.
### 4.2 SceneKit

SceneKit is an Objective-C framework for building simple games and rich app user interfaces with 3D graphics, combining a high-performance rendering engine with a high-level, descriptive API. SceneKit has been available since OS X v10.8 and is now available in iOS for the first time. Lower-level APIs (such as OpenGL ES) require you to implement the rendering algorithms that display a scene in precise detail. By contrast, SceneKit lets you describe your scene in terms of its content—geometry, materials, lights, and cameras—then animate it by describing changes to those objects.

SceneKit’s 3D physics engine enlivens your app or game by simulating gravity, forces, rigid body collisions, and joints. Add high-level behaviors that make it easy to use wheeled vehicles such as cars in a scene, and add physics fields that apply radial gravity, electromagnetism, or turbulence to objects within an area of effect.

Use OpenGL ES to render additional content into a scene, or provide GLSL shaders that replace or augment SceneKit’s rendering. You can also add shader-based postprocessing techniques to SceneKit’s rendering, such as color grading or screen space ambient occlusion.

For more information, see SceneKit Framework Reference.

### 4.3 SpriteKit

The SpriteKit framework (SpriteKit.framework) adds new features to make it easier to support advanced game effects. These features include support for custom OpenGL ES shaders and lighting, integration with SceneKit, and advanced new physics effects and animations. For example, you can create physics fields to simulate gravity, drag, and electromagnetic forces using the SKFieldNode class. You can easily create physics bodies with per-pixel collision masks. And it is easier than ever to pin a physics body to its parent, even if its parent does not have a physics body of its own. These new physics features make complex simulations much easier to implement.

Use constraints to modify the effects of physics and animations on the content of your scene—for example, you can make one node always point toward another node regardless of where the two nodes move.

Xcode 6 also incorporates new shader and scene editors that save you time as you create your game. Create a scene’s contents, specifying which nodes appear in the scene and characteristics of those nodes, including physics effects. The scene is then serialized to a file that your game can easily load.

For information about the classes of this framework, see SpriteKit Framework Reference and SpriteKit Programming Guide.

### 4.4 AV Audio Engine

AVFoundation framework (AVFoundation.framework) adds support for a broad cross-section of audio functionality at a higher level of abstraction than Core Audio. These new audio capabilities are available on both OS X and iOS and include automatic access to audio input and output hardware, audio recording and playback, and audio file parsing and conversion. You also gain access to audio units for generating special effects and filters, pitch and playback speed management, stereo and 3D audio environments, and MIDI instruments.

For more information, see AV Foundation Framework Reference.

### 4.5 OpenGL ES

iOS 8 adds the following new extensions to OpenGL ES.

The APPLE_clip_distance extension adds support for hardware clip planes to OpenGL ES 2.0 and 3.0.

The APPLE_texture_packed_float adds two new floating-point texture formats, R11F_G11F_B10F and RGB9_E5.

The APPLE_color_buffer_packed_float extension builds on APPLE_texture_packed_float so that the new texture formats can be used by a framebuffer object. This means that an app can render into a framebuffer that uses one of these formats.

## 5.HealthKit Framework

HealthKit (HealthKit.framework) is a new framework for managing a user’s health-related information. With the proliferation of apps and devices for tracking health and fitness information, it's difficult for users to get a clear picture of how they are doing. HealthKit makes it easy for apps to share health-related information, whether that information comes from devices connected to an iOS device or is entered manually by the user. The user’s health information is stored in a centralized and secure location. The user can then see all of that data displayed in the Health app.

When your app implements support for HealthKit, it gets access to health-related information for the user and can provide information about the user, without needing to implement support for specific fitness-tracking devices. The user decides which data should be shared with your app. Once data is shared with your app, your app can register to be notified when that data changes; you have fine-grained control over when your app is notified. For example, request that your app be notified whenever users takes their blood pressure, or be notified only when a measurement shows that the user’s blood pressure is too high.

For more information, see HealthKit Framework Reference.

HealthKit（HealthKit.framework）是管理用户健康相关信息的新框架。随着用于跟踪健康和健身信息的应用和设备的激增，用户很难清楚地了解他们的工作。 HealthKit可让应用程序轻松分享健康相关信息，无论该信息来自连接到iOS设备的设备，还是用户手动输入。用户的健康信息存储在集中和安全的位置。然后，用户可以看到Health应用程序中显示的所有数据。

当您的应用程序实现对HealthKit的支持时，它可以访问用户的健康相关信息，并可以提供有关用户的信息，而无需实施对特定健身跟踪设备的支持。用户决定应该与应用程序共享哪些数据。一旦数据与您的应用程序共享，您的应用程序可以注册以在数据更改时收到通知;您的应用程式通知时，您可以进行细致的控制。例如，请求您的应用程序在用户服用血压时通知您，或者仅当测量显示用户的血压过高时才会收到通知。

有关更多信息，请参阅“HealthKit框架参考”。

## 6.HomeKit Framework

HomeKit (HomeKit.framework) is a new framework for communicating with and controlling connected devices in a user’s home. New devices for the home are offering more connectivity and a better user experience. HomeKit provides a standardized way to communicate with those devices.

Your app can use HomeKit to communicate with devices that users have in their homes. Using your app, users can discover devices in their home and configure them. They can also create actions to control those devices. The user can group actions together and trigger them using Siri. Once a configuration is created, users can invite other people to share access to it. For example, a user might temporarily offer access to a house guest.

Use the HomeKit Accessory Simulator to test the communication of your HomeKit app with a device.

For more information, see HomeKit Framework Reference.

HomeKit（HomeKit.framework）是用于在用户家中与连接的设备进行通信和控制的新框架。 家庭的新设备提供更多的连接和更好的用户体验。 HomeKit提供了与这些设备通信的标准化方式。

您的应用程序可以使用HomeKit与用户在家中进行通信。 使用您的应用程序，用户可以在家中发现设备并对其进行配置。 他们还可以创建控制这些设备的操作。 用户可以将操作分组在一起，并使用Siri触发它们。 创建配置后，用户可以邀请其他人分享对其的访问权限。 例如，用户可能暂时提供对房客的访问。

使用HomeKit配件模拟器测试您的HomeKit应用程序与设备的通信。

有关更多信息，请参阅HomeKit框架参考。

## 7.iCloud

iCloud includes some changes that affect the behavior of existing apps and that affect users of those apps.

iCloud包含一些影响现有应用程序行为并影响这些应用程序用户的更改。

### 7.1 Document-Related Data Migration

The iCloud infrastructure is more robust and reliable when documents and data are transferred between user devices and the server. When a user installs iOS 8 and logs into the device with an iCloud account, the iCloud server performs a one-time migration of the documents and data in that user’s account. This migration involves copying the documents and data to a new version of the app’s container directory. The new container is accessible only to devices running iOS 8 or OS X v10.10. Devices running older operating systems can continue to access to the original container, but changes made in that container do not appear in the new container and changes made in the new container do not appear in the original container.

当文件和数据在用户设备和服务器之间传输时，iCloud基础架构更加强大可靠。 当用户安装iOS 8并使用iCloud帐户登录设备时，iCloud服务器会对该用户帐户中的文档和数据进行一次迁移。 此迁移涉及将文档和数据复制到应用程序的容器目录的新版本。 只有运行iOS 8或OS X v10.10的设备才能访问新的容器。 运行旧操作系统的设备可以继续访问原始容器，但是在该容器中所做的更改不会出现在新容器中，新容器中所做的更改不会显示在原始容器中。

### 7.2 CloudKit

CloudKit (CloudKit.framework) is a conduit for moving data between your app and iCloud. Unlike other iCloud technologies where data transfers happen transparently, CloudKit gives you control over when transfers occur. You can use CloudKit to manage all types of data.

Apps that use CloudKit directly can store data in a repository that is shared by all users. This public repository is tied to the app itself and is available even on devices without a registered iCloud account. As the app developer, you can manage the data in this container directly and see any changes made by users through the CloudKit dashboard.

For more information about the classes of this framework, see CloudKit Framework Reference.

CloudKit（CloudKit.framework）是在您的应用和iCloud之间移动数据的渠道。 与数据传输透明化的其他iCloud技术不同，CloudKit可以控制何时传输。 您可以使用CloudKit来管理所有类型的数据。

直接使用CloudKit的应用程序可以将数据存储在所有用户共享的存储库中。 该公共存储库与应用程序本身相关联，即使在没有注册iCloud帐户的设备上也可以使用。 作为应用程序开发人员，您可以直接管理此容器中的数据，并查看用户通过CloudKit仪表板进行的任何更改。

有关此框架的类的更多信息，请参阅CloudKit框架参考。

### 7.3 Document Picker

The document picker view controller (UIDocumentPickerViewController) grants users access to files outside your application’s sandbox. It is a simple mechanism for sharing documents between apps. It also enables more complex workflows, because users can edit a single document with multiple apps.

The document picker lets you access files from a number of document providers. For example, the iCloud document provider grants access to documents stored inside another app’s iCloud container. Third-party developers can provide additional document providers by using the Storage Provider extension.

For more information, see the Document Picker Programming Guide.

文档选择器视图控制器（UIDocumentPickerViewController）允许用户访问应用程序沙箱外的文件。 这是一种在应用程序之间共享文档的简单机制。 它还可以实现更复杂的工作流程，因为用户可以使用多个应用程序编辑单个文档。

文档选择器允许您从多个文档提供者访问文件。 例如，iCloud文档提供者可以访问存储在另一个应用程序的iCloud容器中的文档。 第三方开发人员可以通过使用存储提供程序扩展来提供其他文档提供者。

有关更多信息，请参阅“文档选择器编程指南”。

## 8.Handoff

Handoff is a feature in OS X and iOS that extends the user experience of continuity across devices. Handoff enables users to begin an activity on one device, then switch to another device and resume the same activity on the other device. For example, a user who is browsing a long article in Safari moves to an iOS device that's signed in to the same Apple ID, and the same webpage automatically opens in Safari on iOS, with the same scroll position as on the original device. Handoff makes this experience as seamless as possible.

To participate in Handoff, an app adopts a small API in Foundation. Each ongoing activity in an app is represented by a user activity object that contains the data needed to resume an activity on another device. When the user chooses to resume that activity, the object is sent to the resuming device. Each user activity object has a delegate object that is invoked to refresh the activity state at opportune times, such as just before the user activity object is sent between devices.

If continuing an activity requires more data than is easily transferred by the user activity object, the resuming app has the option to open a stream to the originating app. Document-based apps automatically support activity continuation for users working with iCloud-based documents.

For more information, see Handoff Programming Guide.

切换是OS X和iOS中的一个功能，它扩展了用户在设备之间的连续性体验。 Handoff使用户能够在一个设备上开始活动，然后切换到另一个设备，并在其他设备上恢复相同的活动。例如，浏览Safari中长篇文章的用户将移动到已登录到同一Apple ID的iOS设备，同一网页会自动在iOS上的Safari中打开，与原始设备的滚动位置相同。切换使这种体验尽可能无缝。

要参与Handoff，应用程序在Foundation中采用小型API。应用程序中的每个正在进行的活动都由用户活动对象表示，该对象包含在其他设备上恢复活动所需的数据。当用户选择恢复该活动时，该对象将被发送到恢复设备。每个用户活动对象都有一个委托对象，该对象被调用以在适时的时间刷新活动状态，例如在用户活动对象在设备之间发送之前。

如果持续的活动需要比用户活动对象容易转移的数据更多的数据，则恢复应用程序可以选择向原始应用程序打开流。基于文档的应用程序自动支持使用基于iCloud的文档的用户的活动延续。

有关更多信息，请参阅切换编程指南。

## 9.Supporting New Screen Sizes and Scales

Apps linked against iOS 8 and later should be prepared to support the larger screen size of iPhone 6 and iPhone 6 Plus. On the iPhone 6 Plus, apps should also be prepared to support a new screen scale. In particular, apps that support OpenGL ES and Metal can also choose to size their rendering CAEAGLLayer or CAMetalLayer to get the best possible performance on the iPhone 6 Plus.

To let the system know that your app supports the iPhone 6 screen sizes, include a storyboard launch screen file in your app’s bundle. At runtime, the system looks for a storyboard launch screen file. If such an file is present, the system assumes that your app supports the iPhone 6 and 6 Plus explicitly and runs it in fullscreen mode. If such an image is not present, the system reports a smaller screen size (either 320 by 480 points or 320 by 568 points) so that your app’s screen-based calculations continue to be correct. The contents are then scaled to fit the larger screen.

For more information about specifying the launch images for your app, see Adding App Icons and a Launch Screen File.

iOS 8 adds new features that make dealing with screen size and orientation much more versatile. It is easier than ever to create a single interface for your app that works well on both iPad and iPhone, adjusting to orientation changes and different screen sizes as needed. Using size classes, you can retrieve general information about the size of a device in its current orientation. You can use this information to make initial assumptions about which content should be displayed and how those interface elements are related to each other. Then, use Auto Layout to resize and reposition these elements to fit the actual size of the area provided. Xcode 6 uses size classes and autolayout to create storyboards that adapt automatically to size class changes and different screen sizes.

与iOS 8及更高版本相关联的应用程序应准备支持iPhone 6和iPhone 6 Plus的较大屏幕尺寸。在iPhone 6 Plus上，应用程序也应该准备支持新的屏幕比例。特别是，支持OpenGL ES和Metal的应用程序也可以选择将其渲染CAEAGLLayer或CAMetalLayer的尺寸设置为在iPhone 6 Plus上获得最佳性能。

要让系统知道您的应用程序支持iPhone 6屏幕尺寸，请在应用程序的捆绑包中添加一个故事板启动屏幕文件。在运行时，系统会查找故事板启动屏幕文件。如果存在这样的文件，系统会假定您的应用程序显式支持iPhone 6和6 Plus，并以全屏模式运行。如果这样的图像不存在，系统会报告较小的屏幕尺寸（320×480点或320×568点），以便您的应用程序基于屏幕的计算继续正确。然后缩放内容以适应较大的屏幕。

有关为应用程序指定启动映像的详细信息，请参阅添加应用程序图标和启动屏幕文件。

iOS 8增加了新功能，可以使屏幕尺寸和方向更加通用。为您的应用程序创建一个在iPad和iPhone上运行良好的单一界面比以往更容易，根据需要调整方向更改和不同的屏幕尺寸。使用大小类，您可以检索有关当前方向的设备大小的常规信息。您可以使用此信息对应显示哪些内容以及这些界面元素如何相互关联进行初步假设。然后，使用自动布局调整大小并重新定位这些元素，以适应所提供区域的实际大小。 Xcode 6使用大小类和自动布局来创建自动适应大小类更改和不同屏幕尺寸的故事板。

### 9.1 Traits Describe the Size Class and Scale of an Interface

Size classes are traits assigned to a user interface element, such as a screen or a view. There are two types of size classes in iOS 8: regular and compact. A regular size class denotes either a large amount of screen space, such as on an iPad, or a commonly adopted paradigm that provides the illusion of a large amount of screen space, such as scrolling on an iPhone. Every device is defined by a size class, both vertically and horizontally.

Figure 1 and Figure 2 show the native size classes for the iPad. With the amount of screen space available, the iPad has a regular size class in the vertical and horizontal directions in both portrait and landscape orientations.
Figure 1  iPad size classes in portrait
Figure 2  iPad size classes in landscape

The size classes for iPhones differ based on the kind of device and its orientation. In portrait, the screen has a compact size class horizontally and a regular size class vertically. This corresponds to the common usage paradigm of scrolling vertically for more information. When iPhones are in landscape, their size classes vary. Most iPhones have a compact size class both horizontally and vertically, as shown in Figure 3 and Figure 4. The iPhone 6 Plus has a screen large enough to support regular width in landscape mode, as shown in Figure 5.
Figure 3  iPhone size classes in portrait
Figure 4  iPhone size classes in landscape
Figure 5  iPhone 6 Plus classes in landscape

You can change the size classes associated with a view. This flexibility is especially useful when a smaller view is contained within a larger view. Use the default size classes to arrange the user interface of the larger view and arrange information in the subview based on whatever size classes you feel is most appropriate to that subview.

To support size classes, the following classes are new or modified:

The UITraitCollection class is used to describe a collection of traits assigned to an object. Traits specify the size class, display scale, and idiom for a particular object. Classes that support the UITraitEnvironment protocol (such as UIScreen, UIViewController and UIView) own a trait collection. You can retrieve an object’s trait collection and perform actions when those traits change.

The UIImageAsset class is used to group like images together based on their traits. Combine similar images with slightly different traits into a single asset and then automatically retrieve the correct image for a particular trait collection from the image asset. The UIImage class has been modified to work with image assets.

Classes that support the UIAppearance protocol can customize an object’s appearance based on its trait collection.

The UIViewController class adds the ability to retrieve the trait collection for a child view. You can also lay out the view by changing the size class change through the viewWillTransitionToSize:withTransitionCoordinator: method.

Xcode 6 supports unified storyboards. A storyboard can add or remove views and layout constraints based on the size class that the view controller is displayed in. Rather than maintaining two separate (but similar) storyboards, you can make a single storyboard for multiple size classes. First, design your storyboard with a common interface and then customize it for different size classes, adapting the interface to the strengths of each form factor. Use Xcode 6 to test your app in a variety of size classes and screen sizes to make sure that your interface adapts to the new sizes properly.

大小类是分配给用户界面元素的特征，例如屏幕或视图。 iOS 8中有两种类型的大小类型：常规和紧凑。常规大小类别表示大量的屏幕空间，例如在iPad上，或通常采用的范例，提供大量屏幕空间的幻觉，例如在iPhone上滚动。每个设备都由大小类别定义，垂直和水平。

图1和图2显示了iPad的本机大小类别。随着屏幕空间的可用量，iPad在垂直和水平方向都具有纵向和横向的规则大小。
图1 iPad尺寸类别
图2 iPad大小类在景观

iPhone的尺寸类别根据设备的种类和方向而有所不同。在纵向画面中，屏幕水平尺寸紧凑，垂直尺寸一般。这对应于垂直滚动的更多信息的常见使用范例。当iPhone在风景中时，他们的大小不同。大多数iPhone都具有水平和垂直的紧凑尺寸类型，如图3和图4所示。iPhone 6 Plus具有足够大的屏幕，可以支持横向模式的正常宽度，如图5所示。
图3 iPhone尺寸类别
图4景观中的iPhone大小类
图5风景中的iPhone 6 Plus类

您可以更改与视图关联的大小类。当较大视图中包含较小视图时，这种灵活性特别有用。使用默认大小类来排列较大视图的用户界面，并根据您认为最适合该子视图的大小类别在子视图中排列信息。

要支持大小类，以下类是新的或修改的：

UITraitCollection类用于描述分配给对象的特征集合。特征指定特定对象的大小类，显示比例和成语。支持UITraitEnvironment协议的类（如UIScreen，UIViewController和UIView）拥有一个trait集合。您可以检索对象的trait集合，并在这些特征发生变化时执行操作。

UIImageAsset类用于根据其特征将类似图像组合在一起。将具有稍微不同特征的类似图像合并为单个资源，然后自动从图像资产中检索特定特征集合的正确图像。 UIImage类已被修改为使用图像资产。

支持UIAppearance协议的类可以根据其特征收集来定制对象的外观。

UIViewController类添加了检索子视图的trait集合的能力。您还可以通过使用viewWillTransitionToSize：withTransitionCoordinator：method更改大小类更改来布局视图。

Xcode 6支持统一的故事板。故事板可以根据视图控制器显示的大小类别添加或删除视图和布局约束。而不是维护两个单独的（但类似的）故事板，您可以为多个大小类制作单个故事板。首先，使用通用界面设计您的故事板，然后为不同的大小类别进行自定义，使界面适应每种形状因素的优势。使用Xcode 6测试您的应用程序的各种大小类和屏幕尺寸，以确保您的界面适应新尺寸。

### 9.2 Supporting New Screen Scales

The iPhone 6 Plus uses a new Retina HD display with a very high DPI screen. To support this resolution, iPhone 6 Plus creates a UIScreen object with a screen size of 414 x 736 points and a screen scale of 3.0 (1242 x 2208 pixels). After the contents of the screen are rendered, UIKit samples this content down to fit the actual screen dimensions of 1080 x 1920. To support this rendering behavior, include new artwork designed for the new 3x screen scale. In Xcode 6, asset catalogs can include images at 1x, 2x, and 3x sizes; simply add the new image assets and iOS will choose the correct assets when running on an iPhone 6 Plus. The image loading behavior in iOS also recognizes an @3x suffix.

In a graphics app that uses Metal or OpenGL ES, content can be easily rendered at the precise dimensions of the display without requiring an additional sampling stage. This is critical in high-performance 3D apps that perform many calculations for each rendered pixel. Instead, create buffers to render into that are the exact resolution of the display.

A UIScreen object provides a new property (nativeScale) that provides the native screen scale factor for the screen. When the nativeScale property has the same value as the screen’sscale property, then the rendered pixel dimensions are the same as the screen’s native pixel dimensions. When the two values differ, then you can expect the contents to be sampled before they are displayed.

If you are writing an OpenGL ES app, a GLKView object automatically creates its renderbuffer objects based on the view’s size and the value of its contentScaleFactor property. After the view has been added to a window, set the view’s contentScaleFactor to the value stored in the screen’s nativeScale property, as shown in Listing 1.

Listing 1  Supporting native scale in a GLKView object

- (void) didMoveToWindow

{

self.contentScaleFactor = self.window.screen.nativeScale;

}

In a Metal app, your own view class should have code similar to the code found in Listing 1. In addition, whenever your view’s size changes, and prior to asking the Metal layer for a new drawable, calculate and set the metal layer’s drawableSize property as shown in Listing 2. (An OpenGL ES app that is creating its own renderbuffers would use a similar calculation.)

Listing 2  Adjusting the size of a Metal layer to match the native screen scale

CGSize drawableSize = self.bounds.size;

drawableSize.width  *= self.contentScaleFactor;

drawableSize.height *= self.contentScaleFactor;

metalLayer.drawableSize = drawableSize;

See MetalBasic3D for a working example. The Xcode templates for OpenGL ES and Metal also demonstrate these same techniques.

iPhone 6 Plus使用新的Retina HD显示屏，具有非常高的DPI屏幕。为了支持此分辨率，iPhone 6 Plus创建了一个屏幕尺寸为414 x 736点，屏幕比例为3.0（1242 x 2208像素）的UIScreen对象。在渲染屏幕内容之后，UIKit将此内容缩小到适合1080 x 1920的实际屏幕尺寸。为了支持此渲染行为，请添加为新的3x屏幕尺寸设计的新图稿。在Xcode 6中，资产目录可以包括1x，2x和3x大小的图像;只需添加新的图像资源，iOS将在iPhone 6 Plus上运行时选择正确的资产。 iOS中的图像加载行为也会识别@ 3x后缀。

在使用Metal或OpenGL ES的图形应用程序中，可以在显示屏的精确尺寸下轻松呈现内容，而无需额外的采样阶段。这对于为每个渲染像素执行许多计算的高性能3D应用程序至关重要。相反，创建缓冲区来渲染为显示器的精确分辨率。

UIScreen对象提供了一个新的属性（nativeScale），它为屏幕提供了本机屏幕比例因子。当nativeScale属性与screen'sscale属性具有相同的值时，渲染的像素尺寸与屏幕的本机像素尺寸相同。当两个值不同时，您可以期望在显示内容之前对其进行采样。

如果您正在编写OpenGL ES应用程序，则GLKView对象将根据视图的大小和其ContentScaleFactor属性的值自动创建其renderbuffer对象。将视图添加到窗口之后，将视图的contentScaleFactor设置为屏幕的nativeScale属性中存储的值，如清单1所示。

清单1在GLKView对象中支持本机比例

- （void）didMoveToWindow

{

self.contentScaleFactor = self.window.screen.nativeScale;

}

在Metal应用程序中，您自己的视图类应该具有与清单1中的代码相似的代码。此外，每当您的视图大小发生变化，并且在要求Metal层进行新绘图之前，请计算并设置金属层的drawableSize属性如清单2所示（正在创建自己的renderbuffers的OpenGL ES应用程序将使用类似的计算。）

清单2调整金属层的大小以匹配原生屏幕比例

CGSize drawableSize = self.bounds.size;

drawableSize.width * = self.contentScaleFactor;

drawableSize.height * = self.contentScaleFactor;

metalLayer.drawableSize = drawableSize;

有关实例，请参阅MetalBasic3D。 OpenGL ES和Metal的Xcode模板也展示了这些相同的技术。

## 10.Additional Framework Changes

In addition to the major changes described above, iOS 8 includes other improvements.

除了上述主要变化之外，iOS 8还包括其他改进。

### 10.1 API Modernization

Many frameworks on iOS have adopted small interface changes that take advantage of modern Objective-C syntax:

Getter and setter methods are replaced by properties in most classes. Code using the existing getter and setter methods continues to work with this change.

Initialization methods are updated to have a return value of instancetype instead of id.

Designated initializers are declared as such where appropriate.

In most cases, these changes do not require any additional work in your own app. However, you may also want to implement these changes in your own Objective-C code. In particular, you may want to modernize your Objective-C code for the best experience when interoperating with Swift code.

For more information, see Adopting Modern Objective-C.

iOS上的许多框架都采用了小的界面改变，利用现代Objective-C语法：

Getter和setter方法被大多数类中的属性替换。 使用现有的getter和setter方法的代码继续适用于此更改。

初始化方法更新为具有instancetype而不是id的返回值。

指定的初始化程序在适当的情况下被声明为这样。

在大多数情况下，这些更改在您自己的应用程序中不需要任何其他工作。 但是，您也可能希望在您自己的Objective-C代码中实现这些更改。 特别是，当您与Swift代码进行互操作时，您可能希望将您的Objective-C代码现代化，以获得最佳体验。

有关更多信息，请参阅采用现代Objective-C。

### 10.2 AV Foundation Framework

The AV Foundation framework (AVFoundation.framework) enables you to capture metadata over time while shooting video. Arbitrary types of metadata can be embedded with a video recording at various points in time. For example, you might record the current physical location in a video created by a moving camera device.

For information about the classes of this framework, see AV Foundation Framework Reference.

AV基础框架（AVFoundation.framework）可让您在拍摄视频时随时随地捕获元数据。 任意类型的元数据可以嵌入在不同时间点的录像。 例如，您可以将当前的物理位置记录在由移动的相机设备创建的视频中。

有关此框架的类的信息，请参阅AV Foundation Framework Reference。

### 10.3 AVKit Framework

The AVKit framework (AVKit.framework) previously introduced on OS X is available on iOS. Use it instead of Media Player framework when you need to display a video.

以前在OS X上引入的AVKit框架（AVKit.framework）可在iOS上使用。 当您需要显示视频时，使用它而不是Media Player框架。

### 10.4 CoreAudioKit Framework

The new CoreAudioKit framework simplifies the effort required to create user interfaces for apps that take advantage of inter-app audio.

新的CoreAudioKit框架简化了为利用应用间音频的应用程序创建用户界面所需的工作。

### 10.5 Core Image Framework

The Core Image framework (CoreImage.framework) has the following changes:

You can create custom image kernels in iOS.

Core image detectors can detect rectangles and QR codes in an image.

For information about the classes of this framework, see Core Image Reference Collection.

Core Image框架（CoreImage.framework）具有以下更改：

您可以在iOS中创建自定义图像内核。

核心图像检测器可以检测图像中的矩形和QR码。

有关此框架的类的信息，请参阅Core Image Reference Collection。

### 10.6 Core Location Framework

The Core Location framework (CoreLocation.framework) has the following changes:

You can determine which floor the device is on, if the device is in a multistory building.

The visit service provides an alternative to the significant location change service for apps that need location information about interesting places visited by the user.

For information about the classes of this framework, see Core Location Framework Reference.

核心位置框架（CoreLocation.framework）具有以下更改：

如果设备在多层建筑中，则可以确定设备的哪一层。

访问服务为需要用户访问的有趣位置的位置信息的应用程序提供重要的位置更改服务。

有关此框架的类的信息，请参阅核心位置框架参考。

### 10.7 Core Motion Framework

Core Motion provides two new classes (CMAltimeter and CMAltitudeData) which allow you to access the barometer on the iPhone 6 and iPhone 6 Plus. On these two devices, you can also use a CMMotionActivity object to determine whether the user is on a bicycle.

Core Motion提供两个新类（CMAltimeter和CMAltitudeData），可让您访问iPhone 6和iPhone 6 Plus上的气压计。 在这两个设备上，您还可以使用CMMotionActivity对象来确定用户是否在自行车上。

### 10.8 Foundation Framework

The Foundation framework (Foundation.framework) includes the following enhancements:

The NSFileVersion class provides access to past versions of iCloud documents. These versions are stored in iCloud, but can be downloaded on request.

The NSURL class supports storing document thumbnails as metadata.

The NSMetadataQuery class can search for external iCloud documents that your app has opened. 

基础框架（Foundation.framework）包括以下增强功能：

NSFileVersion类提供对过去版本的iCloud文档的访问。 这些版本存储在iCloud中，但可以根据要求下载。

NSURL类支持将文档缩略图存储为元数据。

NSMetadataQuery类可以搜索您的应用程序打开的外部iCloud文档。

### 10.9 Game Controller Framework

The Game Controller framework (GameController.framework) has the following changes:

If the controller is attached to a device, you can now receive device motion data directly from the Game Controller framework.

If you are working with button inputs and do not care about pressure sensitivity, a new handler can call your game only when the button’s pressed state changes.

Game Controller框架（GameController.framework）具有以下更改：

如果控制器连接到设备，您现在可以直接从游戏控制器框架接收设备运动数据。

如果您使用按钮输入，并且不关心压力敏感度，只有当按钮的按下状态发生变化时，新的处理程序才能调用您的游戏。

### 10.10 GameKit Framework

The GameKit framework (GameKit.framework) has the following changes:

Features that were added in iOS 7 are available on OS X 10.10, making it easier to use these features in a cross-platform game.

The new GKSavedGame class and new methods in GKLocalPlayer make it easy to save and restore a user’s progress. The data is stored on iCloud; GameKit does the necessary work to synchronize the files between the device and iCloud.

Methods and properties that use player identifier strings are now deprecated. Instead, use GKPlayer objects to identify players. Replacement properties and methods have been added that take GKPlayer objects.

GameKit框架（GameKit.framework）具有以下更改：

在iOS 7中添加的功能在OS X 10.10中可用，可以在跨平台游戏中更轻松地使用这些功能。

GKLocalPlayer中的新GKSavedGame类和新方法可以轻松保存和恢复用户的进度。 数据存储在iCloud上; GameKit进行必要的工作来同步设备和iCloud之间的文件。

现在不推荐使用播放器标识符字符串的方法和属性。 相反，使用GKPlayer对象来识别玩家。 已经添加了采用GKPlayer对象的替换属性和方法。

### 10.11 iAd Framework

The iAd framework (iAd.framework) adds the following new features:

If you are using AV Kit to play a video, you can play preroll advertisements before the video is played.

You can look up more information about the the effectiveness of advertisements for your app.

For information about the classes of this framework, see iAd Framework Reference.

iAd框架（iAd.framework）添加了以下新功能：

如果您正在使用AV Kit播放视频，则可以在播放视频之前播放预卷广告。

您可以查看有关您的应用程序广告效果的更多信息。

有关此框架的类的信息，请参阅iAd框架参考。

### 10.12 Media Player Framework

Two Media Player framework (MediaPlayer.framework) classes are extended with new metadata information.

For information about the classes of this framework, see Media Player Framework Reference.

使用新的元数据信息扩展了两个媒体播放器框架（MediaPlayer.framework）。

有关此框架的类的信息，请参阅Media Player框架参考。

### 10.13 Network Extension Framework

Use the new Network Extension framework (NetworkExtension.framework) to configure and control virtual private networks (VPN).

使用新的网络扩展框架（NetworkExtension.framework）来配置和控制虚拟专用网络（VPN）。

### 10.14 SpriteKit Framework Changes

The SpriteKit framework (SpriteKit.framework) adds many new features:

An SKShapeNode object can specify textures to be used when the shape is either stroked or filled.

The SKSpriteNode, SKShapeNode, SKEmitterNode, and SKEffectNode classes include support for custom rendering. Use the SKShader and SKUniform classes to compile an OpenGL ES 2.0-based fragment shader and provide input data to the shader.

SKSpriteNode objects can provide lighting information so that SpriteKit automatically generates lighting effects and shadows. Add SKLightNode objects to the scene to specify the lights, and then customize the properties on these lights and any sprites to determine how the scene is lit.

The SKFieldNode class provides physics special effects you can apply to a scene. For example, create magnetic fields, add drag effects, or even generate randomized motion. All effects are constrained to a specific region of the scene, and you can carefully tune both the effect’s strength and how quickly the effect is weakened by distance. Field nodes make it easy to drop in an effect without having to search the entire list of physics bodies and apply forces to them.

A new SK3DNode class is used to integrate a SceneKit scene into your game as a sprite. Each time that SpriteKit renders your scene, it renders the 3D scene node first to generate a texture, then uses that texture to render a sprite in SpriteKit. Creating 3D sprites can help you avoid creating dozens of frames of animation to produce an effect.

New actions have been added, including support for inverse kinematic animations.

A new system of constraints has been added to scene processing. SpriteKit applies constraints after physics is simulated, and you use them to specify a set of rules for how a node is positioned and oriented. For example, you can use a constraint to specify that a particular node in the scene always points at another node in the scene. Constraints make it easier to implement rendering rules in your game without having to tweak the scene manually in your event loop.

A scene can implement all of the run-loop stages in a delegate instead of subclassing the SKScene class. Using a delegate often means that you can avoid needing to subclass the SKScene class.

The SKView class provides more debugging information. You can also provide more performance hints to the renderer.

You can create normal map textures for use in lighting and physics calculations (or inside your own custom shaders). Use the new SKMutableTexture class when you need to create textures whose contents are dynamically updated.

You can generate texture atlases dynamically at runtime from a collection of textures.

Xcode 6 also incorporates many new SpriteKit editors. Create or edit the contents of scenes directly, specifying the nodes that appear in the scene as well as their physics bodies and other characteristics. The scene is serialized to a file and can be loaded directly by your game. The editors save you time because often you don’t need to implement your own custom editors to create your game’s assets.

For information about the classes of this framework, see SpriteKit Framework Reference and SpriteKit Programming Guide.

SpriteKit框架（SpriteKit.framework）添加了许多新功能：

一个SKShapeNode对象可以指定要在纹理或者填充形状时使用的纹理。

SKSpriteNode，SKShapeNode，SKEmitterNode和SKEffectNode类包括对自定义渲染的支持。使用SKShader和SKUniform类编译基于OpenGL ES 2.0的片段着色器，并向着色器提供输入数据。

SKSpriteNode对象可以提供照明信息，使SpriteKit自动生成照明效果和阴影。将SKLightNode对象添加到场景中以指定灯光，然后自定义这些灯和任何精灵的属性，以确定场景是如何点亮的。

SKFieldNode类提供了可以应用于场景的物理特效。例如，创建磁场，添加拖动效果，甚至生成随机运动。所有效果都限于场景的特定区域，您可以仔细地调整效果的强度以及效果如何通过距离减弱。现场节点可以轻松放弃效果，而无需搜索整个物理列表并向其施加力量。

新的SK3DNode类用于将SceneKit场景集成到游戏中作为精灵。每次SpriteKit呈现您的场景，它首先渲染3D场景节点以生成纹理，然后使用该纹理在SpriteKit中渲染精灵。创建3D精灵可以帮助您避免创建数十帧动画以产生效果。

增加了新的动作，包括支持反向运动学动画。

一个新的约束系统已被添加到场景处理中。 SpriteKit在物理模拟后应用约束，并且您可以使用它们来指定一组节点如何定位和定向的规则。例如，您可以使用约束来指定场景中的特定节点总是指向场景中的另一个节点。限制使您更容易在游戏中实现渲染规则，而无需在事件循环中手动调整场景。

场景可以实现委托中的所有运行循环阶段，而不是对SKScene类进行子类化。使用代理通常意味着您可以避免需要对SKScene类进行子类化。

SKView类提供更多的调试信息。您还可以向渲染器提供更多的性能提示。

您可以创建用于照明和物理计算（或您自己的自定义着色器内）的法线贴图。当您需要创建动态更新其内容的纹理时，请使用新的SKMutableTexture类。

您可以从纹理集合在运行时动态生成纹理地图集。

Xcode 6还包含许多新的SpriteKit编辑器。直接创建或编辑场景的内容，指定场景中出现的节点及其物理体和其他特征。场景被序列化到一个文件，可以直接由你的游戏加载。编辑节省时间，因为您经常不需要实现自己的自定义编辑器来创建游戏的资产。

有关此框架的类的信息，请参见SpriteKit Framework Reference和SpriteKit编程指南。

### 10.15 UIKit Framework

The UIKit framework (UIKit.framework) includes the following enhancements:

Apps that use local or push notifications must explicitly register the types of alerts that they display to users by using a UIUserNotificationSettings object. This registration process is separate from the process for registering remote notifications, and users must grant permission to deliver notifications through the requested options.

Local and push notifications can include custom actions as part of an alert. Custom actions appear as buttons in the alert. When tapped, your app is notified and asked to perform the corresponding action. Local notifications can also be triggered by interactions with Core Location regions.

Collection views support dynamically changing the size of cells. Typically, you use this support to accommodate changes to the preferred text size, but you can adapt it for other scenarios too. Collection views also support more options for invalidating different portions of the layout and thereby improving performance.

The UISearchController class replaces the UISearchDisplayController class for managing the display of search-related interfaces.

The UIViewController class adopts traits and the new sizing techniques for adjusting the view controller’s content, as described in Traits Describe the Size Class and Scale of an Interface.

The UISplitViewController class is now supported on iPhone as well as iPad. The class adjusts its presented interface to adapt to the available space. The class also changes the way it shows and hides the primary view controller, giving you more control over how to display the split view interface.

The UINavigationController class has new options for changing the size of the navigation bar or hiding it altogether.

The new UIVisualEffect class enables you to integrate custom blur effects into your view hierarchies.

The new UIPresentationController class lets you separate the content of your view controllers from the chrome used to display them.

The new UIPopoverPresentationController class handles the presentation of content in a popover. The existing UIPopoverController class uses the popover presentation controller to show popovers on the screen.

The new UIAlertController class replaces the UIActionSheet and UIAlertView classes as the preferred way to display alerts in your app.

The new UIPrinterPickerController class offers a view controller-based way to display a list of printers and to select one to use during printing. Printers are represented by instances of the new UIPrinter class.

You can take the user directly to your app-related settings in the Settings app. Pass the UIApplicationOpenSettingsURLStringUIApplicationOpenSettingsURLString constant to the openURL: method of the UIApplication class.

For information about the classes of this framework, see UIKit Framework Reference.

UIKit框架（UIKit.framework）包括以下增强功能：

使用本地或推送通知的应用程序必须通过使用UIUserNotificationSettings对象来显式注册他们向用户显示的警报类型。此注册过程与注册远程通知的过程分开，用户必须授予通过请求的选项提供通知的权限。

本地和推送通知可以包括自定义操作作为警报的一部分。自定义操作在警报中显示为按钮。点击时，系统会通知您的应用，并要求您执行相应的操作。本地通知也可以通过与核心位置区域的交互来触发。

集合视图支持动态更改单元格的大小。通常，您可以使用此支持来适应首选文本大小的更改，但也可以适应其他场景。集合视图还支持更多选项，使布局的不同部分无效，从而提高性能。

UISearchController类替换用于管理与搜索相关的接口的显示的UISearchDisplayController类。

UIViewController类采用特征和新的尺寸调整技术来调整视图控制器的内容，如“描述尺寸类别和接口尺寸”中所述。

iPhone和iPad都支持UISplitViewController类。该类调整其呈现的界面以适应可用空间。该类还会更改其显示方式并隐藏主视图控制器，从而更好地控制如何显示拆分视图界面。

UINavigationController类有更改导航栏大小或完全隐藏的新选项。

新的UIVisualEffect类使您能够将自定义模糊效果集成到视图层次结构中。

新的UIPresentationController类允许您将视图控制器的内容与用于显示它们的chrome分开。

新的UIPopoverPresentationController类处理popover中内容的呈现。现有的UIPopoverController类使用popover演示控制器来显示屏幕上的显示。

新的UIAlertController类将UIActionSheet和U​​IAlertView类替换为在应用程序中显示警报的首选方式。

新的UIPrinterPickerController类提供了基于视图控制器的方式来显示打印机列表，并选择在打印期间使用的打印机列表。打印机由新的UIPrinter类的实例表示。

您可以直接访问用户在“设置”应用中的应用相关设置。将UIApplicationOpenSettingsURLStringUIApplicationOpenSettingsURLString常量传递给UIApplication类的openURL：方法。

有关此框架的类的信息，请参阅UIKit框架参考。

### 10.16 Video Toolbox Framework

The Video Toolbox framework (VideoToolbox.framework) includes direct access to hardware video encoding and decoding.

Video Toolbox框架（VideoToolbox.framework）包括直接访问硬件视频编码和解码。

### 10.17 Webkit Framework

A number of new classes have been added to make it easier to create high-performance native apps that utilize web content. See WebKit Framework Reference.

添加了一些新的类，以便更容易地创建利用Web内容的高性能本机应用程序。 请参阅WebKit框架参考。

## 11.Deprecated APIs

The following APIs are deprecated:

The UIApplication methods and properties for registering notifications. Use the new API instead.

The UIViewController methods and properties for interface orientation. Traits and size classes replace them, as described in Traits Describe the Size Class and Scale of an Interface. There are other smaller changes to UIKit API to support size classes; often older interfaces that used specific device idioms have been replaced.

The UISearchDisplayController class. This class is replaced by the UISearchController class.

Methods and properties in GameKit that use player identifier strings.

For a complete list of specific API deprecations, see iOS 8.0 API Diffs.


以下API已弃用：

用于注册通知的UIApplication方法和属性。 改用新的API。

UIViewController接口方向和属性。 特征和大小类别替换它们，如“特征描述界面的大小类别和比例”中所述。 UIKit API还有其他较小的更改来支持大小类; 通常使用特定设备成语的较旧界面已被替换。

UISearchDisplayController类。 这个类被UISearchController类替换。

GameKit中使用播放器标识符字符串的方法和属性。

有关特定API弃用的完整列表，请参阅iOS 8.0 API差异。

