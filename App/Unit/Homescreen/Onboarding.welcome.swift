import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - UI Components
    
    let introductionLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to MusicBox!"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let featuresLabel: UILabel = {
        let label = UILabel()
        label.text = "Discover amazing live performances by talented artists. Connect with your favorite musicians and book them for your events."
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = UIColor.systemGray
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        view.backgroundColor = UIColor.white
        
        view.addSubview(introductionLabel)
        view.addSubview(featuresLabel)
        view.addSubview(signUpButton)
        view.addSubview(loginButton)
        
        // Set up constraints (adjust as needed for your layout)
        introductionLabel.translatesAutoresizingMaskIntoConstraints = false
        featuresLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            introductionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            introductionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            introductionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            featuresLabel.topAnchor.constraint(equalTo: introductionLabel.bottomAnchor, constant: 20),
            featuresLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            featuresLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            signUpButton.topAnchor.constraint(equalTo: featuresLabel.bottomAnchor, constant: 30),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
            
            loginButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    // MARK: - Action Methods
    
    @objc private func signUpButtonTapped() {
        // Handle sign up action
        print("Sign Up Button Tapped")
    }
    
    @objc private func loginButtonTapped() {
        // Handle login action
        print("Login Button Tapped")
    }
}
