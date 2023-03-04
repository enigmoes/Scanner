//
//  ScannerApp.swift
//  Scanner
//
//  Created by Joel on 3/3/23.
//

import SwiftUI

@main
struct ScannerApp: App {
    
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
