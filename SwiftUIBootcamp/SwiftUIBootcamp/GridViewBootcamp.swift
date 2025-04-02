//
//  GridViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/03/25.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        /*Grid() {
            GridRow {
                cell(int: 1)
                cell(int: 2)
                cell(int: 3)
            }
            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            cell(int: 10000000000000)
            GridRow {
                cell(int: 4)
                cell(int: 5)
                
            }
        }*/
        
        
        Grid(alignment: .center, horizontalSpacing: 10, verticalSpacing: 10){
            ForEach(0..<5, id: \.self) { rowIndex in
                GridRow (alignment: .bottom) {
                    ForEach(0..<5, id: \.self) { columnIndex in
                        let cellNumber = (rowIndex * 5) + (columnIndex + 1)
                        if cellNumber == 13 {
                            EmptyView()
//                            Color.clear
////                                .gridCellUnsizedAxes(.horizontal)
////                                .gridCellUnsizedAxes(.vertical)
//                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 12 ? 2 : 1)
                                .gridCellAnchor(.trailing)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                        cellNumber == 5 ? .leading : .center)
                        }
                    }
                }
            }
        }
        
    }
    
    private func cell(int:Int) -> some View {
        Text("\(int)")
            .frame(height: int == 10 ? 10 : nil)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(5)
    }
}

#Preview {
    GridViewBootcamp()
}
