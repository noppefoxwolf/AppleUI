//
//  ClockListCell.swift
//  Example
//
//  Created by Tomoya Hirano on 2020/08/06.
//

import SwiftUI
 
extension Clock.Alerm {
    public struct Cell: View {
        let title: Text
        let subText: Text
        @Binding var isOn: Bool
        
        public var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    title
                        .font(.system(size: 56, weight: .light))
                        .foregroundColor(.gray)
                    subText
                        .font(.system(size: 11, weight: .light))
                        .foregroundColor(.gray)
                }
                Toggle("", isOn: $isOn)
            }
            .background(Color.black)
        }
    }
}

struct ClockAlermCell_Previews: PreviewProvider {
    static var previews: some View {
        Clock.Alerm.Cell(
            title: Text("10:00"),
            subText: Text("平日"),
            isOn: Binding<Bool>.constant(false)
        ).previewLayout(.sizeThatFits)
    }
}

struct ClockAlermCellDevice_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ForEach(0..<4, content: { _ in
                Clock.Alerm.Cell(
                    title: Text("10:00"),
                    subText: Text("平日"),
                    isOn: Binding<Bool>.constant(false)
                )
            })
        }
        .environment(\.colorScheme, .dark)
    }
}

