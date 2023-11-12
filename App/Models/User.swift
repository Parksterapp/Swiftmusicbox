// User.swift

import Foundation

class User {

    // MARK: - Properties
    
    var userId: String
    var username: String
    var email: String
    var password: String
    var profileImage: String
    var subscriptionStatus: Bool
    var subscribedArtists: [Artist]
    var bookings: [BookingRequest]

    // MARK: - Initialization
    
    init(userId: String, username: String, email: String, password: String,
         profileImage: String, subscriptionStatus: Bool,
         subscribedArtists: [Artist], bookings: [BookingRequest]) {
        self.userId = userId
        self.username = username
        self.email = email
        self.password = password
        self.profileImage = profileImage
        self.subscriptionStatus = subscriptionStatus
        self.subscribedArtists = subscribedArtists
        self.bookings = bookings
    }

    // MARK: - Additional Methods
    
    func subscribeToArtist(_ artist: Artist) {
        // Implementation details to subscribe to an artist
        // ...
    }

    func addBooking(_ booking: BookingRequest) {
        // Implementation details to add a booking
        // ...
    }

    func updateProfileImage(_ newImage: String) {
        // Implementation details to update the profile image
        // ...
    }
}
