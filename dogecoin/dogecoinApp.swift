//
//  dogecoinApp.swift
//  dogecoin
//
//  Created by Zechariah Singh on 24/9/21.
//

import SwiftUI

@main
struct dogecoinApp: App {
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(vm)
        }
    }
}
