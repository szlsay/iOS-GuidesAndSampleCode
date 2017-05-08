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

## 2.Touch ID Authentication

Your app can now use Touch ID to authenticate the user. Some apps may need to secure access to all of their content, while others might need to secure certain pieces of information or options. In either case, you can require the user to authenticate before proceeding.

Your app can use Touch ID to unlock individual keychain items. For a working sample, see KeychainTouchID: Using Touch ID with Keychain and LocalAuthentication.

Use the Local Authentication Framework (LocalAuthentication.framework) to display an alert to the user with an application-specified reason for why the user is authenticating. When your app gets a reply, it can react based on whether the user was able to successfully authenticate. For more information, see Local Authentication Framework Reference.

## 3.Photos

Take better photos in your app, provide new editing capabilities to the Photos app, and create new, more efficient workflows that access the user’s photo and video assets.

## 3.1 Photos Framework

The Photos framework (Photos.framework) provides new APIs for working with photo and video assets, including iCloud Photos assets, that are managed by the Photos app. This framework is a more capable alternative to the Assets Library framework. Key features include a thread-safe architecture for fetching and caching thumbnails and full-sized assets, requesting changes to assets, observing changes made by other apps, and resumable editing of asset content.

For more information, see Photos Framework Reference.

Use the related Photos UI framework (PhotosUI.framework) to create app extensions for editing image and video assets in the Photos app. For more information, see App Extension Programming Guide.

## 3.2 Manual Camera Controls

The AV Foundation framework (AVFoundation.framework) makes it easier than ever to take great photos. Your app can take direct control over the camera focus, white balance, and exposure settings. In addition, your app can use bracketed exposure captures to automatically capture images with different exposure settings.

For more information see AV Foundation Framework Reference.

## 3.3 Improved Camera Functionality

Use the following APIs to discover and enable new camera features found on the iPhone 6 and iPhone 6 Plus:

A new property (videoHDRSupported) can determine whether a capture device supports high dynamic range streaming.

A new video stabilization mode (AVCaptureVideoStabilizationModeCinematic) provides more cinematic results in the captured video.

A new property (highResolutionStillImageOutputEnabled) can be used to set an AVCaptureStillImageOutput object to capture still pictures at a higher resolution.

A new property (autoFocusSystem) can be used to determine how the camera performs auto focusing.

## 4.Games

Technology improvements in iOS 8 make it easier than ever to implement your game’s graphics and audio features. Take advantage of high-level frameworks for ease-of-development, or use new low-level enhancements to harness the power of the GPU.

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

## 6.HomeKit Framework

HomeKit (HomeKit.framework) is a new framework for communicating with and controlling connected devices in a user’s home. New devices for the home are offering more connectivity and a better user experience. HomeKit provides a standardized way to communicate with those devices.

Your app can use HomeKit to communicate with devices that users have in their homes. Using your app, users can discover devices in their home and configure them. They can also create actions to control those devices. The user can group actions together and trigger them using Siri. Once a configuration is created, users can invite other people to share access to it. For example, a user might temporarily offer access to a house guest.

Use the HomeKit Accessory Simulator to test the communication of your HomeKit app with a device.

For more information, see HomeKit Framework Reference.

## 7.iCloud

iCloud includes some changes that affect the behavior of existing apps and that affect users of those apps.
### 7.1 Document-Related Data Migration

The iCloud infrastructure is more robust and reliable when documents and data are transferred between user devices and the server. When a user installs iOS 8 and logs into the device with an iCloud account, the iCloud server performs a one-time migration of the documents and data in that user’s account. This migration involves copying the documents and data to a new version of the app’s container directory. The new container is accessible only to devices running iOS 8 or OS X v10.10. Devices running older operating systems can continue to access to the original container, but changes made in that container do not appear in the new container and changes made in the new container do not appear in the original container.

### 7.2 CloudKit

CloudKit (CloudKit.framework) is a conduit for moving data between your app and iCloud. Unlike other iCloud technologies where data transfers happen transparently, CloudKit gives you control over when transfers occur. You can use CloudKit to manage all types of data.

Apps that use CloudKit directly can store data in a repository that is shared by all users. This public repository is tied to the app itself and is available even on devices without a registered iCloud account. As the app developer, you can manage the data in this container directly and see any changes made by users through the CloudKit dashboard.

For more information about the classes of this framework, see CloudKit Framework Reference.

### 7.3 Document Picker

The document picker view controller (UIDocumentPickerViewController) grants users access to files outside your application’s sandbox. It is a simple mechanism for sharing documents between apps. It also enables more complex workflows, because users can edit a single document with multiple apps.

The document picker lets you access files from a number of document providers. For example, the iCloud document provider grants access to documents stored inside another app’s iCloud container. Third-party developers can provide additional document providers by using the Storage Provider extension.

For more information, see the Document Picker Programming Guide.

## 8.Handoff

Handoff is a feature in OS X and iOS that extends the user experience of continuity across devices. Handoff enables users to begin an activity on one device, then switch to another device and resume the same activity on the other device. For example, a user who is browsing a long article in Safari moves to an iOS device that's signed in to the same Apple ID, and the same webpage automatically opens in Safari on iOS, with the same scroll position as on the original device. Handoff makes this experience as seamless as possible.

To participate in Handoff, an app adopts a small API in Foundation. Each ongoing activity in an app is represented by a user activity object that contains the data needed to resume an activity on another device. When the user chooses to resume that activity, the object is sent to the resuming device. Each user activity object has a delegate object that is invoked to refresh the activity state at opportune times, such as just before the user activity object is sent between devices.

If continuing an activity requires more data than is easily transferred by the user activity object, the resuming app has the option to open a stream to the originating app. Document-based apps automatically support activity continuation for users working with iCloud-based documents.

For more information, see Handoff Programming Guide.

## 9.Supporting New Screen Sizes and Scales

Apps linked against iOS 8 and later should be prepared to support the larger screen size of iPhone 6 and iPhone 6 Plus. On the iPhone 6 Plus, apps should also be prepared to support a new screen scale. In particular, apps that support OpenGL ES and Metal can also choose to size their rendering CAEAGLLayer or CAMetalLayer to get the best possible performance on the iPhone 6 Plus.

To let the system know that your app supports the iPhone 6 screen sizes, include a storyboard launch screen file in your app’s bundle. At runtime, the system looks for a storyboard launch screen file. If such an file is present, the system assumes that your app supports the iPhone 6 and 6 Plus explicitly and runs it in fullscreen mode. If such an image is not present, the system reports a smaller screen size (either 320 by 480 points or 320 by 568 points) so that your app’s screen-based calculations continue to be correct. The contents are then scaled to fit the larger screen.

For more information about specifying the launch images for your app, see Adding App Icons and a Launch Screen File.

iOS 8 adds new features that make dealing with screen size and orientation much more versatile. It is easier than ever to create a single interface for your app that works well on both iPad and iPhone, adjusting to orientation changes and different screen sizes as needed. Using size classes, you can retrieve general information about the size of a device in its current orientation. You can use this information to make initial assumptions about which content should be displayed and how those interface elements are related to each other. Then, use Auto Layout to resize and reposition these elements to fit the actual size of the area provided. Xcode 6 uses size classes and autolayout to create storyboards that adapt automatically to size class changes and different screen sizes.

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

## 10.Additional Framework Changes

In addition to the major changes described above, iOS 8 includes other improvements.

### 10.1 API Modernization

Many frameworks on iOS have adopted small interface changes that take advantage of modern Objective-C syntax:

Getter and setter methods are replaced by properties in most classes. Code using the existing getter and setter methods continues to work with this change.

Initialization methods are updated to have a return value of instancetype instead of id.

Designated initializers are declared as such where appropriate.

In most cases, these changes do not require any additional work in your own app. However, you may also want to implement these changes in your own Objective-C code. In particular, you may want to modernize your Objective-C code for the best experience when interoperating with Swift code.

For more information, see Adopting Modern Objective-C.

### 10.2 AV Foundation Framework

The AV Foundation framework (AVFoundation.framework) enables you to capture metadata over time while shooting video. Arbitrary types of metadata can be embedded with a video recording at various points in time. For example, you might record the current physical location in a video created by a moving camera device.

For information about the classes of this framework, see AV Foundation Framework Reference.

### 10.3 AVKit Framework

The AVKit framework (AVKit.framework) previously introduced on OS X is available on iOS. Use it instead of Media Player framework when you need to display a video.

### 10.4 CoreAudioKit Framework

The new CoreAudioKit framework simplifies the effort required to create user interfaces for apps that take advantage of inter-app audio.

### 10.5 Core Image Framework

The Core Image framework (CoreImage.framework) has the following changes:

You can create custom image kernels in iOS.

Core image detectors can detect rectangles and QR codes in an image.

For information about the classes of this framework, see Core Image Reference Collection.

### 10.6 Core Location Framework

The Core Location framework (CoreLocation.framework) has the following changes:

You can determine which floor the device is on, if the device is in a multistory building.

The visit service provides an alternative to the significant location change service for apps that need location information about interesting places visited by the user.

For information about the classes of this framework, see Core Location Framework Reference.

### 10.7 Core Motion Framework

Core Motion provides two new classes (CMAltimeter and CMAltitudeData) which allow you to access the barometer on the iPhone 6 and iPhone 6 Plus. On these two devices, you can also use a CMMotionActivity object to determine whether the user is on a bicycle.

### 10.8 Foundation Framework

The Foundation framework (Foundation.framework) includes the following enhancements:

The NSFileVersion class provides access to past versions of iCloud documents. These versions are stored in iCloud, but can be downloaded on request.

The NSURL class supports storing document thumbnails as metadata.

The NSMetadataQuery class can search for external iCloud documents that your app has opened. 

### 10.9 Game Controller Framework

The Game Controller framework (GameController.framework) has the following changes:

If the controller is attached to a device, you can now receive device motion data directly from the Game Controller framework.

If you are working with button inputs and do not care about pressure sensitivity, a new handler can call your game only when the button’s pressed state changes.

### 10.10 GameKit Framework

The GameKit framework (GameKit.framework) has the following changes:

Features that were added in iOS 7 are available on OS X 10.10, making it easier to use these features in a cross-platform game.

The new GKSavedGame class and new methods in GKLocalPlayer make it easy to save and restore a user’s progress. The data is stored on iCloud; GameKit does the necessary work to synchronize the files between the device and iCloud.

Methods and properties that use player identifier strings are now deprecated. Instead, use GKPlayer objects to identify players. Replacement properties and methods have been added that take GKPlayer objects.

### 10.11 iAd Framework

The iAd framework (iAd.framework) adds the following new features:

If you are using AV Kit to play a video, you can play preroll advertisements before the video is played.

You can look up more information about the the effectiveness of advertisements for your app.

For information about the classes of this framework, see iAd Framework Reference.

### 10.12 Media Player Framework

Two Media Player framework (MediaPlayer.framework) classes are extended with new metadata information.

For information about the classes of this framework, see Media Player Framework Reference.

### 10.13 Network Extension Framework

Use the new Network Extension framework (NetworkExtension.framework) to configure and control virtual private networks (VPN).

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

### 10.16 Video Toolbox Framework

The Video Toolbox framework (VideoToolbox.framework) includes direct access to hardware video encoding and decoding.

### 10.17 Webkit Framework

A number of new classes have been added to make it easier to create high-performance native apps that utilize web content. See WebKit Framework Reference.

## 11.Deprecated APIs

The following APIs are deprecated:

The UIApplication methods and properties for registering notifications. Use the new API instead.

The UIViewController methods and properties for interface orientation. Traits and size classes replace them, as described in Traits Describe the Size Class and Scale of an Interface. There are other smaller changes to UIKit API to support size classes; often older interfaces that used specific device idioms have been replaced.

The UISearchDisplayController class. This class is replaced by the UISearchController class.

Methods and properties in GameKit that use player identifier strings.

For a complete list of specific API deprecations, see iOS 8.0 API Diffs.
Next
Previous


Copyright © 2017 Apple Inc. All Rights Reserved. Terms of Use | Privacy Policy | Updated: 2017-03-21
Feedback
How helpful is this document?
*
Very helpful
Somewhat helpful
Not helpful
How can we improve this document?
Fix typos or links
Fix incorrect information
Add or update code samples
Add or update illustrations
Add information about...
*

* Required information

To submit a product bug or enhancement request, please visit the Bug Reporter page.

Please read Apple's Unsolicited Idea Submission Policy before you send us your feedback.


