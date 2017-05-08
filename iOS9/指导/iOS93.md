## 1.Accessing the Music Library

访问音乐库

New methods in the Media Player and StoreKit frameworks let you add an Apple Music track to the music library and play it. First, use the SKCloudServiceController API to determine the current capabilities, such as if the device allows playback of Apple Music catalog tracks and the addition of tracks to the library. Then, you can use the MPMediaLibrary method addItemWithProductID:completionHandler: to add a track to the library and the MPMusicPlayerController method setQueueWithStoreIDs: to play a track.

媒体播放器和StoreKit框架中的新方法可让您将Apple Music曲目添加到音乐库并进行播放。 首先，使用SKCloudServiceController API来确定当前的功能，例如，如果设备允许播放Apple Music目录曲目并添加曲目到库中。 然后，您可以使用MPMediaLibrary方法addItemWithProductID：completionHandler：将曲目添加到库和MPMusicPlayerController方法setQueueWithStoreIDs：播放曲目。

## 2.CloudKit Framework

CloudKit框架

The CloudKit framework (CloudKit.framework) introduces support for long-lived operations, which are operations that continue running even if your process exits. You might want to use long-lived operations to continue large downloads while your app isn't running or to persist user changes to your server as soon as possible.

If you mark a CKModifyRecordsOperation object as long-lived, note that because the operation may run later, it has an increased chance of hitting conflicts. To handle potential conflicts, you can either:

Create a “journal” record that is write-once (that is, without conflict) and reconcile this record at read time

Replay the operation the next time the app is launched, after you address the conflicting record or records

CloudKit框架（CloudKit.framework）引入了对长期存储操作的支持，这些操作即使您的进程退出也会继续运行。 您可能希望在应用程序未运行时使用长时间的操作来继续大量下载，或者尽快将用户更改持久保留到服务器。

如果您将CKModifyRecordsOperation对象标记为长期使用，请注意，由于操作可能稍后运行，因此可能会增加冲突的几率。 为了处理潜在的冲突，您可以：

创建一个写入一次（即没有冲突）的“日记”记录，并在读取时调节此记录

在下一次启动应用程序之后，在解决冲突的记录或记录之后，重播操作

## 3.HealthKit Framework

The HealthKit framework (HealthKit.framework) includes the following enhancements.

The HKActivitySummary class defines an activity summary object that contains a summary of the user’s activity for a given day. The summary includes the active energy burned, the amount of time spent exercising (that is, the time spent moving at a brisk walk or greater), and the stand hours earned. Apple Watch saves activity summary objects to the HealthKit store. You can create your own summary objects (for example, to display in a HKActivityRingView control in your iPhone app), but you cannot save them to the HealthKit store. You can use a HKActivitySummaryQuery object to read HKActivitySummary objects from the HealthKit store.

HealthKit框架（HealthKit.framework）包含以下增强功能。

HKActivitySummary类定义一个活动摘要对象，其中包含用户在某一天的活动的摘要。 总结包括燃烧的活跃能量，锻炼时间（即轻快步行或更长时间移动的时间）以及所花费的时间。 Apple Watch将活动汇总对象保存到HealthKit存储。 您可以创建自己的摘要对象（例如，在iPhone应用程序中显示HKActivityRingView控件），但不能将其保存到HealthKit存储。 您可以使用HKActivitySummaryQuery对象从HealthKit商店中读取HKActivitySummary对象。

## 4.HealthKitUI Framework

iOS 9.3 introduces the HealthKitUI framework (HealthKitUI.framework), which gives you access to the activity ring view. The HKActivityRingView object shows data from an HKActivitySummary object by displaying the Move (red), Exercise (blue), and Stand (green) rings against a black background.

iOS 9.3引入了HealthKitUI框架（HealthKitUI.framework），它允许您访问活动环视图。 HKActivityRingView对象通过在黑色背景上显示Move（红色），运动（蓝色）和Stand（绿色）环来显示来自HKActivitySummary对象的数据。

## 5.Watch Connectivity Framework

The Watch Connectivity framework (WatchConnectivity.framework) includes the following enhancements.

In iOS 9.3, users can pair more than one Apple Watch with the same iPhone. If your iOS app uses the Watch Connectivity framework to communicate with a paired Apple Watch, you must adopt new interfaces to support the configuration and management of sessions for multiple watches. These new interfaces provide more information about the state of a connection and give your iOS app a way to detect when a new Apple Watch is in use. Apps that do not adopt these new interfaces may be terminated unexpectedly when a switch occurs. To learn more, see Supporting Communication with Multiple Apple Watches.

Watch Connectivity框架（WatchConnectivity.framework）包含以下增强功能。

在iOS 9.3中，用户可以使用相同的iPhone配对多个Apple Watch。 如果您的iOS应用程序使用Watch Connectivity框架与配对的Apple Watch通信，则必须采用新的界面来支持多个手表的会话的配置和管理。 这些新界面提供了有关连接状态的更多信息，并为您的iOS应用程序提供了一种方法来检测何时使用新的Apple Watch。 不采用这些新接口的应用程序可能在交换机发生时意外终止。 要了解更多信息，请参阅支持与多台Apple手表的通信。

