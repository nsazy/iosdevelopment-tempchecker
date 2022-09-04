//
//  TempCheckerApp.swift
//  TempChecker
//
//  Created by Nicholas Sazy on 7/3/22.
//

import SwiftUI

@main
struct TempCheckerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(tempC: "", tempCalc: 0, tempFResult: 0, tempF: "", tempCResult: 0)
        }
    }
}
