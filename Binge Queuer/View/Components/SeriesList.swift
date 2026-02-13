//
//  SeriesList.swift
//  Binge Queuer
// hallo
//  Created by Rayan Hassan on 10/02/2026.
//

import SwiftUI

struct SeriesList: View {
    @State private var seriesDataList = seriesSourceList
    var body: some View {
        NavigationView
            {
                List{
                    ForEach(seriesDataList){series in
                        NavigationLink(
                            destination: SeriesDetail(series: series)
                        ){
                            BingeRow(series: series)
                        }
                    }.onDelete(perform: delete)
                    
                }.navigationTitle("BingeQueuer") .navigationBarTitleDisplayMode(.inline)
                    .toolbar{ EditButton()}
            }

        }
    private func delete(at offsets: IndexSet) {
        seriesDataList.remove(atOffsets: offsets)
    }
}

#Preview {
    SeriesList()
}
