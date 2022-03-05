//
//  SNButton.swift
//  RentalBuddy
//
//  Created by Raul Rodriguez III on 3/4/22.
//

import UIKit

class SNButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(backgroundColor: UIColor, title: String, systemImageName: String){
        self.init(frame: .zero)
        set(color: backgroundColor, title: title, systemImageName: systemImageName)
    }
    
    
    
    private func configure() {
        configuration = .tinted()
//        configuration = .filled()
        configuration?.cornerStyle = .medium
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func set(color: UIColor, title: String, systemImageName: String) {
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.title = title
        
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 6
        configuration?.imagePlacement = .leading //default
    }
    
}
