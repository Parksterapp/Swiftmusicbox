// BookingRequest.swift

import Foundation

enum BookingStatus {
    case pending
    case confirmed
    case declined
}

class BookingRequest {

    // MARK: - Properties
    
    var requestId: String
    var user: User
    var artist: Artist
    var status: BookingStatus
    var date: Date
    var venue: String
    var message: String

    // MARK: - Initialization
    
    init(requestId: String, user: User, artist: Artist, status: BookingStatus,
         date: Date, venue: String, message: String) {
        self.requestId = requestId
        self.user = user
        self.artist = artist
        self.status = status
        self.date = date
        self.venue = venue
        self.message = message
    }

    // MARK: - Additional Methods
    
    func confirmBooking() {
        // Implementation details to confirm the booking
        // ...
    }

    func declineBooking() {
        // Implementation details to decline the booking
        // ...
    }

    func updateBookingDetails(date: Date, venue: String, message: String) {
        // Implementation details to update booking details
        // ...
    }

    func sendMessage(_ newMessage: String) {
        // Implementation details to send a message related to the booking
        // ...
    }
}
