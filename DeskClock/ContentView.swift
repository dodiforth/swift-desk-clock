//
//  ContentView.swift
//  DeskClock
//
//  Created by Dowon Kim on 18/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var timeString = "--:--"

      let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

      var body: some View {
        Text(timeString)
          .onReceive(timer) { _ in
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss"
            timeString = formatter.string(from: Date())
          }
          .font(.system(size: 40))
          .padding()
      }
}

#Preview {
    ContentView()
}
