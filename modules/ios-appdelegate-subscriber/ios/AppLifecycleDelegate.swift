import ExpoModulesCore

public class AppLifecycleDelegate: ExpoAppDelegateSubscriber {
    
    public required init() {
        super.init()

        NotificationCenter.default.addObserver(self, selector: #selector(handleDidEnterBackground), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    /**
     Cleans things up before deallocation.
     */
    deinit {
      NotificationCenter.default.removeObserver(self)
    }

    @objc
    func handleDidEnterBackground() {
        log.info("AppLifecycleDelegate.handleDidEnterBackground")
    }

    public func applicationDidBecomeActive(_ application: UIApplication) {
        // The app has become active.
        log.info("AppLifecycleDelegate.applicationDidBecomeActive")
    }

    public func applicationWillResignActive(_ application: UIApplication) {
        // The app is about to become inactive.
        log.info("AppLifecycleDelegate.applicationWillResignActive")
    }

    public func applicationDidEnterBackground(_ application: UIApplication) {
        // The app is now in the background.
        log.info("AppLifecycleDelegate.applicationDidEnterBackground")
    }

    public func applicationWillEnterForeground(_ application: UIApplication) {
        // The app is about to enter the foreground.
        log.info("AppLifecycleDelegate.applicationWillEnterForeground")
    }

    public func applicationWillTerminate(_ application: UIApplication) {
        // The app is about to terminate.
        log.info("AppLifecycleDelegate.applicationWillTerminate")
    }
}
