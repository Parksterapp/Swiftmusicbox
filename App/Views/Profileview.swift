// ProfileView.swift

import UIKit

class ProfileView: UIViewController {

    // MARK: - Properties
    
    let userProfileSection: UIView = {
        // Implementation details for displaying user profile information
        // ...

        return profileSection
    }()

    let subscriptionStatusSection: UIView = {
        // Implementation details for displaying subscription status
        // ...

        return subscriptionStatusView
    }()

    let subscribedArtistsSection: UICollectionView = {
        // Implementation details for displaying subscribed artists
        // ...

        return collectionView
    }()

    let bookingsHistorySection: UITableView = {
        // Implementation details for displaying bookings history
        // ...

        return tableView
    }()

    let editProfileButton: UIButton = {
        // Implementation details for a button to edit the user's profile
        // ...

        return button
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    // MARK: - Private Methods

    private func configureUI() {
        // Configure the layout and constraints for the ProfileView
        // ...

        view.addSubview(userProfileSection)
        view.addSubview(subscriptionStatusSection)
        view.addSubview(subscribedArtistsSection)
        view.addSubview(bookingsHistorySection)
        view.addSubview(editProfileButton)
    }
}
