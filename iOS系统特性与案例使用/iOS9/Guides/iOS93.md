## 1.Accessing the Music Library

New methods in the Media Player and StoreKit frameworks let you add an Apple Music track to the music library and play it. First, use the SKCloudServiceController API to determine the current capabilities, such as if the device allows playback of Apple Music catalog tracks and the addition of tracks to the library. Then, you can use the MPMediaLibrary method addItemWithProductID:completionHandler: to add a track to the library and the MPMusicPlayerController method setQueueWithStoreIDs: to play a track.

## 2.CloudKit Framework

The CloudKit framework (CloudKit.framework) introduces support for long-lived operations, which are operations that continue running even if your process exits. You might want to use long-lived operations to continue large downloads while your app isn't running or to persist user changes to your server as soon as possible.

If you mark a CKModifyRecordsOperation object as long-lived, note that because the operation may run later, it has an increased chance of hitting conflicts. To handle potential conflicts, you can either:

Create a “journal” record that is write-once (that is, without conflict) and reconcile this record at read time

Replay the operation the next time the app is launched, after you address the conflicting record or records

## 3.HealthKit Framework

The HealthKit framework (HealthKit.framework) includes the following enhancements.

The HKActivitySummary class defines an activity summary object that contains a summary of the user’s activity for a given day. The summary includes the active energy burned, the amount of time spent exercising (that is, the time spent moving at a brisk walk or greater), and the stand hours earned. Apple Watch saves activity summary objects to the HealthKit store. You can create your own summary objects (for example, to display in a HKActivityRingView control in your iPhone app), but you cannot save them to the HealthKit store. You can use a HKActivitySummaryQuery object to read HKActivitySummary objects from the HealthKit store.

## 4.HealthKitUI Framework

iOS 9.3 introduces the HealthKitUI framework (HealthKitUI.framework), which gives you access to the activity ring view. The HKActivityRingView object shows data from an HKActivitySummary object by displaying the Move (red), Exercise (blue), and Stand (green) rings against a black background.

## 5.Watch Connectivity Framework

The Watch Connectivity framework (WatchConnectivity.framework) includes the following enhancements.

In iOS 9.3, users can pair more than one Apple Watch with the same iPhone. If your iOS app uses the Watch Connectivity framework to communicate with a paired Apple Watch, you must adopt new interfaces to support the configuration and management of sessions for multiple watches. These new interfaces provide more information about the state of a connection and give your iOS app a way to detect when a new Apple Watch is in use. Apps that do not adopt these new interfaces may be terminated unexpectedly when a switch occurs. To learn more, see Supporting Communication with Multiple Apple Watches.


