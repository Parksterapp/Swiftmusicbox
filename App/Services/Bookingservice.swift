// BookingService.swift

import Foundation

class BookingService {

    // MARK: - Singleton Instance

    static let shared = BookingService()

    // MARK: - Properties
    
    private var bookingRequests: [BookingRequest]
    private var confirmedBookings: [BookingRequest]

    // MARK: - Initialization
    
    private init() {
        // Initialize data or fetch from a backend
        bookingRequests = []
        confirmedBookings = []
    }

    // MARK: - Public Methods
    
    func getAllBookingRequests() -> [BookingRequest] {
        return bookingRequests
    }

    func getAllConfirmedBookings() -> [BookingRequest] {
        return confirmedBookings
    }

    func addBookingRequest(_ bookingRequest: BookingRequest) {
        bookingRequests.append(bookingRequest)
    }

    func confirmBooking(_ bookingRequest: BookingRequest) {
        if let index = bookingRequests.firstIndex(where: { $0.requestId == bookingRequest.requestId }) {
            let confirmedBooking = bookingRequests.remove(at: index)
            confirmedBookings.append(confirmedBooking)
        }
    }

    func declineBooking(_ bookingRequest: BookingRequest) {
        if let index = bookingRequests.firstIndex(where: { $0.requestId == bookingRequest.requestId }) {
            bookingRequests.remove(at: index)
        }
    }

    func updateBookingDetails(_ bookingRequest: BookingRequest, date: Date, venue: String, message: String) {
        if let index = bookingRequests.firstIndex(where: { $0.requestId == bookingRequest.requestId }) {
            bookingRequests[index].updateBookingDetails(date: date, venue: venue, message: message)
        }
    }
}
