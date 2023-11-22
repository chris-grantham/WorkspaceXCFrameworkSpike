//
//  ContentView.swift
//  PackageConsumerApp
//
//  Created by Christopher Grantham on 22/11/2023.
//

import SwiftUI
import FrameworkA

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
		.onAppear {
			_ = SDKAdapter.init()
		}
    }
}

#Preview {
    ContentView()
}
