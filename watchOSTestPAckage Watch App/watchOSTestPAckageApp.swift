//
//  watchOSTestPAckageApp.swift
//  watchOSTestPAckage Watch App
//
//  Created by Robert Dresler on 13.04.2023.
//

import SwiftUI
import Strings

@main
struct watchOSTestPAckage_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

    var text: String {
        Localizable.test()
    }
}
