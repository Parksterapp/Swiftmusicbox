// DataService.swift

import Foundation

class DataService {

    // MARK: - Singleton Instance

    static let shared = DataService()

    // MARK: - Properties
    
    private var artists: [Artist]
    private var performances: [Performance]
    private var bookingRequests: [BookingRequest]
    private var ratings: [Rating]

    // MARK: - Initialization
    
    private init() {
        // Initialize data or fetch from a backend
        artists = []
        performances = []
        bookingRequests = []
        ratings = []
    }

    // MARK: - Public Methods
    
    func getAllArtists() -> [Artist] {
        return artists
    }

    func getAllPerformances() -> [Performance] {
        return performances
    }

    func getAllBookingRequests() -> [BookingRequest] {
        return bookingRequests
    }

    func getAllRatings() -> [Rating] {
        return ratings
    }

    func addArtist(_ artist: Artist) {
        artists.append(artist)
    }

    func addPerformance(_ performance: Performance) {
        performances.append(performance)
    }

    func addBookingRequest(_ bookingRequest: BookingRequest) {
        bookingRequests.append(bookingRequest)
    }

    func addRating(_ rating: Rating) {
        ratings.append(rating)
    }
}
