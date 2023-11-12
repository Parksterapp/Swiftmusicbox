// UserManager.swift

import Foundation

class UserManager {

    // MARK: - Singleton Instance

    static let shared = UserManager()

    // MARK: - Properties
    
    private var currentUser: User?

    // MARK: - Initialization
    
    private init() {
        // Initialize data or fetch from a backend if needed
    }

    // MARK: - Public Methods
    
    func getCurrentUser() -> User? {
        return currentUser
    }

    func setCurrentUser(_ user: User) {
        currentUser = user
    }

    func updateUserProfile(_ newBio: String) {
        if let user = currentUser {
            user.updateBio(newBio)
        }
    }

    func subscribeToArtist(_ artist: Artist) {
        // Implementation details for subscribing to an artist
        // ...
    }

    func unsubscribeFromArtist(_ artist: Artist) {
        // Implementation details for unsubscribing from an artist
        // ...
    }

    func isUserSubscribedToArtist(_ artist: Artist) -> Bool {
        // Implementation details to check if the user is subscribed to an artist
        // ...
        return false
    }
}
