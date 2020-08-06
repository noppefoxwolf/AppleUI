//
//  Clock.StopWatch.Cell.swift
//  Example
//
//  Created by Tomoya Hirano on 2020/08/07.
//

import SwiftUI

extension Clock.StopWatch {
    public struct CircleButton: View {
        let title: Text
        let action: () -> Void
        let baseColor: Color
        
        public var body: some View {
            Button(action: action, label: {
                ZStack {
                    ZStack {
                        Circle().foregroundColor(baseColor).padding(3)
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(baseColor)
                    }
                    title
                        .foregroundColor(.white)
                        .blendMode(.overlay)
                }.padding(2)
            }).frame(width: 74, height: 74)
        }
    }
    
    public struct LapTimeButton: View {
        let title: Text
        let action: () -> Void
        
        public var body: some View {
            Clock.StopWatch.CircleButton(title: title, action: action, baseColor: .gray)
        }
    }
    
    public struct RunButton: View {
        let title: Text
        let action: () -> Void
        
        public var body: some View {
            Clock.StopWatch.CircleButton(title: title, action: action, baseColor: .green)
        }
    }
}


struct ClockStopWatchButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Clock.StopWatch.RunButton(
                title: Text("開始"),
                action: {}
            )
            Image("StopWatch/Button").opacity(0.5)
        }
        .previewLayout(.sizeThatFits)
    }
}
