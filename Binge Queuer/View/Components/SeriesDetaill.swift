//
//  SeriesDetaill.swift
//  Binge Queuer
// hallo
//  Created by Rayan Hassan on 13/02/2026.
//

import SwiftUI
import MapKit

struct SeriesDetail: View {
    
    var series: Series
    
    // MARK: - Constants (Clean Code)
    private let spacerSize: CGFloat = 20
    private let mapHeight: CGFloat = 250
    private let imageOverlap: CGFloat = 90
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: spacerSize) {
                
                // MARK: - Map
                MapView(
                    coordinate: CLLocationCoordinate2D(
                        latitude: series.latitude,
                        longitude: series.longitude
                    )
                )
                .frame(height: mapHeight)
                .cornerRadius(12)

                // MARK: - Image (overlapping on map)
                CircleImage(image: Image(series.image))
                    .frame(maxWidth: .infinity)
                    .offset(y: -imageOverlap)
                    .padding(.bottom, -imageOverlap)

                
                // MARK: - Title
                Text(series.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                // MARK: - Seasons
                Text("Seizoenen: \(series.seasons)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                // MARK: - Description
                Text(series.description)
                    .font(.body)
                
            }
            .padding()
        }
        .navigationTitle(series.title)
        .navigationBarTitleDisplayMode(.inline)

    }
}

#Preview {
    SeriesDetail(series: seriesSourceList[0])
}
