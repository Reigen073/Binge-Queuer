//
//  BingeRow.swift
//  Binge Queuer
//
//  Created by Rayan Hassan on 10/02/2026.
//

import SwiftUI

struct BingeRow: View {
    var series: Series
    var body: some View {
        HStack{
            Image(series.image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
        }
    }
}

#Preview {	
    BingeRow(series: seriesSourceList[0])
}
