// RatingService.swift

import Foundation

class RatingService {

    // MARK: - Singleton Instance

    static let shared = RatingService()

    // MARK: - Properties
    
    private var ratings: [Rating]

    // MARK: - Initialization
    
    private init() {
        // Initialize data or fetch from a backend
        ratings = []
    }

    // MARK: - Public Methods
    
    func getAllRatings() -> [Rating] {
        return ratings
    }

    func addRating(_ rating: Rating) {
        ratings.append(rating)
    }

    func updateRating(_ rating: Rating, newStars: Int) {
        if let index = ratings.firstIndex(where: { $0.ratingId == rating.ratingId }) {
            ratings[index].updateStars(newStars: newStars)
        }
    }

    func deleteRating(_ rating: Rating) {
        if let index = ratings.firstIndex(where: { $0.ratingId == rating.ratingId }) {
            ratings.remove(at: index)
        }
    }

    func reportInappropriateRating(_ rating: Rating) {
        // Implementation details for reporting a rating as inappropriate
        // ...
    }

    func likePerformance(_ rating: Rating) {
        // Implementation details for liking the performance associated with the rating
        // ...
    }
}
