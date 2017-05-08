## 1.Live Photos

Live Photos is a feature of iOS 9 that allows users to capture and relive their favorite moments with richer context than traditional photos. When the user presses the shutter button, the Camera app captures much more content along with the regular photo, including audio and additional frames before and after the photo. When browsing through these photos, users can interact with them and play back all the captured content, making the photos come to life.

iOS 9.1 introduces APIs that allow apps to incorporate playback of Live Photos, as well as export the data for sharing. The Photos framework includes support to fetch a PHLivePhoto object from the PHImageManager object, which is used to represent all the data that comprises a Live Photo. You can use a PHLivePhotoView object (defined in the PhotosUI framework) to display the contents of a Live Photo. The PHLivePhotoView view takes care of displaying the image, handling all user interaction, and applying the visual treatments to play back the content.

You can also use PHAssetResource to access the data of a PHLivePhoto object for sharing purposes. You can request a PHLivePhoto object for an asset in the user’s photo library by using PHImageManager or UIImagePickerController. If you have a sharing extension, you can also get PHLivePhoto objects by using NSItemProvider. On the receiving side of a share, you can recreate a PHLivePhoto object from the set of files originally exported by the sender.

The data of a Live Photo is exported as a set of files in a PHAssetResource object. The set of files must be preserved as a unit when you upload them to a server. When you rebuild a PHLivePhoto with these files on the receiver side, the files are validated; loading fails if the files don’t come from the same asset.

To learn how to give users a great experience with Live Photos in your app, see .

Live Photos是iOS 9的一项功能，可让用户通过比传统照片更丰富的内容来捕捉和重温自己喜爱的时刻。当用户按下快门按钮时，相机应用程序会捕获更多内容以及常规照片，包括照片前后的音频和附加帧。浏览这些照片时，用户可以与他们进行互动并播放所有捕获的内容，使照片变得生动。

iOS 9.1引入了API，允许应用程序包含实时照片的播放，以及导出数据进行共享。照片框架包括从PHImageManager对象获取PHLivePhoto对象的支持，该对象用于表示包含实时照片的所有数据。您可以使用PHLivePhotoView对象（在PhotosUI框架中定义）来显示实时照片的内容。 PHLivePhotoView视图负责显示图像，处理所有用户交互，并应用视觉效果来播放内容。

您还可以使用PHAssetResource访问PHLivePhoto对象的数据以进行共享。您可以使用PHImageManager或UIImagePickerController为用户照片库中的资产请求PHLivePhoto对象。如果您有一个共享扩展名，您还可以使用NSItemProvider获取PHLivePhoto对象。在共享的接收端，您可以从发件人最初导出的文件集中重新创建一个PHLivePhoto对象。

Live Photo的数据作为一组文件导出到PHAssetResource对象中。当您将它们上传到服务器时，该文件集必须作为一个单元保留。当您在接收方重建这些文件的PHLivePhoto时，文件将被验证;如果文件不是来自同一资产，则加载失败。

要了解如何让用户在您的应用中使用Live Photos享受很好的体验，请参阅。

## 2.Support for Apple Pencil

iOS 9.1 introduces APIs that help you use coalesced and predictive touches that can be produced by Apple Pencil on supported devices. Specifically, the UITouch class includes:

The preciseLocationInView: and precisePreviousLocationInView: methods, which give you the precise location for a touch (when available)

The altitudeAngle property and the azimuthAngleInView: and azimuthUnitVectorInView: methods, which help you determine the altitude and azimuth of the stylus

The estimatedProperties and estimatedPropertiesExpectingUpdates properties, which help you prepare to update touches that are estimated

The UITouchTypeStylus constant that’s used to represent a touch received from a stylus.

For an example of some ways to take advantage of these APIs in your app, see the sample project TouchCanvas: Using UITouch efficiently and effectively.

iOS 9.1引入了API，可帮助您使用Apple Pencil在支持的设备上生成的合并和预测触摸。 具体来说，UITouch类包括：

precisionLocationInView：和precisePreviousLocationInView：方法，它为您提供触摸的确切位置（如果可用）

altitudeAngle属性和azimuthAngleInView：和azimuthUnitVectorInView：方法，可帮助您确定触控笔的高度和方位角

estimateProperties和estimatedPropertiesExpectingUpdates属性，可帮助您准备更新估计的触摸

UITouchTypeStylus常量，用于表示从触控笔接收到的触摸。

有关在应用程序中使用这些API的一些方法的示例，请参阅示例项目TouchCanvas：高效，高效地使用UITouch。


