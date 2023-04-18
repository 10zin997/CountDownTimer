//
//  SimpleCDTimer.swift
//  CountDownTimer
//
//  Created by Tenzin wangyal on 4/18/23.
//

import SwiftUI

struct SimpleCD: View {
    @State private var remainingSeconds = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            Group{
                Text("\(remainingSeconds)")
                    .font(.largeTitle)
            }
            .onReceive(timer) { _ in
                if remainingSeconds > 0{
                    remainingSeconds -= 1
                }else{
                    timer.upstream.connect().cancel()
                }
            }
            
        }
        
    }
}

struct SimpleCD_Previews: PreviewProvider {
    static var previews: some View {
        SimpleCD()
    }
}
