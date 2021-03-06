//
//  SNTextField.swift
//  RentalBuddy
//
//  Created by Raul Rodriguez III on 3/4/22.
//

import UIKit

class SNTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        keyboardType =  .default
        returnKeyType = .go //what the return key says, needs to be connected
        clearButtonMode = .whileEditing //adds 'x' to to text field while editing
        placeholder = "username"
    }
}
