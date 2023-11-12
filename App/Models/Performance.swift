// Performance.swift

import Foundation

class Performance {

    // MARK: - Properties
    
    var performanceId: String
    var title: String
    var videoUrl: String
    var date: Date
    var venue: String
    var description: String
    var artist: Artist
    var ratings: [Rating]

    // MARK: - Initialization
    
    init(performanceId: String, title: String, videoUrl: String, date: Date,
         venue: String, description: String, artist: Artist, ratings: [Rating]) {
        self.performanceId = performanceId
        self.title = title
        self.videoUrl = videoUrl
        self.date = date
        self.venue = venue
        self.description = description
        self.artist = artist
        self.ratings = ratings
    }

    // MARK: - Additional Methods
    
    func addRating(_ rating: Rating) {
        // Implementation details to add a rating to the performance
        // ...
    }

    func updatePerformanceDetails(title: String, videoUrl: String, date: Date,
                                   venue: String, description: String) {
        // Implementation details to update performance details
        // ...
    }

    func deletePerformance() {
        // Implementation details to delete the performance
        // ...
    }

    func sharePerformance() {
        // Implementation details to share the performance
        // ...
    }
}
