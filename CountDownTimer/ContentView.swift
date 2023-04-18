//
//  ContentView.swift
//  CountDownTimer
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SimpleCD()
            CircularCD()
            ProgressBarCD()
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

