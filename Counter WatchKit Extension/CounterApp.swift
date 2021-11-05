//
//  CounterApp.swift
//  Counter WatchKit Extension
//
//  Created by Rachel Yee on 11/5/21.
//

import SwiftUI

@main
struct CounterApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
