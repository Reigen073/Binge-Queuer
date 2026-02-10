//
//  SeriesList.swift
//  Binge Queuer
//
//  Created by Rayan Hassan on 10/02/2026.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        NavigationView {
            List(seriesSourceList){series in
                NavigationLink(
                    destination: BingeRow(series: series)
                ){
                    BingeRow(series: series)
                }
            }.navigationTitle("BingeQueuer")
        }
        
    }
}

#Preview {
    SeriesList()
}
