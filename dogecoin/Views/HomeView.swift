//
//  HomeView.swift
//  dogecoin
//
//  Created by Zechariah Singh on 24/9/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: HomeViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(vm.posts) { post in
                    Text(post.submissionTitle ?? "")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(dev.vm)
    }
}
