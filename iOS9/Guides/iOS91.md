
## 1.Live Photos

Live Photos is a feature of iOS 9 that allows users to capture and relive their favorite moments with richer context than traditional photos. When the user presses the shutter button, the Camera app captures much more content along with the regular photo, including audio and additional frames before and after the photo. When browsing through these photos, users can interact with them and play back all the captured content, making the photos come to life.

iOS 9.1 introduces APIs that allow apps to incorporate playback of Live Photos, as well as export the data for sharing. The Photos framework includes support to fetch a PHLivePhoto object from the PHImageManager object, which is used to represent all the data that comprises a Live Photo. You can use a PHLivePhotoView object (defined in the PhotosUI framework) to display the contents of a Live Photo. The PHLivePhotoView view takes care of displaying the image, handling all user interaction, and applying the visual treatments to play back the content.

You can also use PHAssetResource to access the data of a PHLivePhoto object for sharing purposes. You can request a PHLivePhoto object for an asset in the user’s photo library by using PHImageManager or UIImagePickerController. If you have a sharing extension, you can also get PHLivePhoto objects by using NSItemProvider. On the receiving side of a share, you can recreate a PHLivePhoto object from the set of files originally exported by the sender.

The data of a Live Photo is exported as a set of files in a PHAssetResource object. The set of files must be preserved as a unit when you upload them to a server. When you rebuild a PHLivePhoto with these files on the receiver side, the files are validated; loading fails if the files don’t come from the same asset.

To learn how to give users a great experience with Live Photos in your app, see .

## 2.Support for Apple Pencil

iOS 9.1 introduces APIs that help you use coalesced and predictive touches that can be produced by Apple Pencil on supported devices. Specifically, the UITouch class includes:

The preciseLocationInView: and precisePreviousLocationInView: methods, which give you the precise location for a touch (when available)

The altitudeAngle property and the azimuthAngleInView: and azimuthUnitVectorInView: methods, which help you determine the altitude and azimuth of the stylus

The estimatedProperties and estimatedPropertiesExpectingUpdates properties, which help you prepare to update touches that are estimated

The UITouchTypeStylus constant that’s used to represent a touch received from a stylus.

For an example of some ways to take advantage of these APIs in your app, see the sample project TouchCanvas: Using UITouch efficiently and effectively.


