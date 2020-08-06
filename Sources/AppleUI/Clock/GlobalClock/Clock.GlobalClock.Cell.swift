//
//  ClockListCell.swift
//  Example
//
//  Created by Tomoya Hirano on 2020/08/06.
//

import SwiftUI
 
extension Clock.GlobalClock {
    public struct Cell: View {
        let title: Text
        let subText: Text
        let accessoryText: Text
        
        public var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    subText
                        .font(.system(size: 11, weight: .light))
                        .foregroundColor(.gray)
                    title
                        .font(.system(size: 23, weight: .light))
                        .foregroundColor(.white)
                }
                Spacer()
                accessoryText
                    .font(.system(size: 60, weight: .thin))
                    .foregroundColor(.white)
            }
            .background(Color.black)
        }
    }
}

struct ClockGlobalClockCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Clock.GlobalClock.Cell(
                title: Text("東京"),
                subText: Text("今日、+0時間"),
                accessoryText: Text("18:31")
            ).padding()
            Image("Clock/ListCell").opacity(0.5)
        }
        .previewLayout(.sizeThatFits)
        .environment(\.colorScheme, .dark)
    }
}

struct ClockGlobalClockCellDevice_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ForEach(0..<4, content: { _ in
                Clock.GlobalClock.Cell(
                    title: Text("東京"),
                    subText: Text("今日、+0時間"),
                    accessoryText: Text("18:31")
                )
            })
        }
        .environment(\.colorScheme, .dark)
    }
}

