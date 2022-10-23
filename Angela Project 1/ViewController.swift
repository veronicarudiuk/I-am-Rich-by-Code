//
//  ViewController.swift
//  Angela Project 1
//
//  Created by Veronica Rudiuk on 13.10.22.
//


import SwiftUI

class ViewController: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.text = "I Am Rich"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "HelveticaNeue", size: 40)
        label.textColor = .white
        return label
    }()
    
    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
//        image.backgroundColor = .white
        image.image = UIImage(named: "diamond")
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "AccentColor")
        view.addSubview(label)
        view.addSubview(image)
        
        setupLabel()
        setupImage()
    }
    
    func setupLabel() {
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 124).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 156).isActive = true
        label.widthAnchor.constraint(equalToConstant: 173).isActive = true
        label.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
    func setupImage() {
        image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 72).isActive = true
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 313).isActive = true
        image.widthAnchor.constraint(equalToConstant: 270).isActive = true
        image.heightAnchor.constraint(equalToConstant: 270).isActive = true
    }
    
}

struct SwiftUIController: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    func makeUIViewController(context: Context) -> UIViewControllerType {
        let viewController = UIViewControllerType()
        return viewController
    }
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

struct SwiftUIController_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIController().edgesIgnoringSafeArea(.all)
    }
}
