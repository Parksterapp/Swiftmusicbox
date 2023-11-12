// RatingView.swift

import UIKit

class RatingView: UIView {

    // MARK: - Properties

    let starsImageView: UIImageView = {
        let imageView = UIImageView()
        // Implementation details for stars image view
        // ...

        return imageView
    }()

    let ratingLabel: UILabel = {
        let label = UILabel()
        // Implementation details for rating label
        // ...

        return label
    }()

    let likeButton: UIButton = {
        let button = UIButton()
        // Implementation details for like button
        // ...

        return button
    }()

    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }

    // MARK: - Private Methods

    private func configureUI() {
        // Configure the layout and constraints for the RatingView
        // ...

        addSubview(starsImageView)
        addSubview(ratingLabel)
        addSubview(likeButton)
    }
}
