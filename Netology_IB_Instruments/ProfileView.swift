//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Krime Loma    on 7/9/22.
//

import Foundation
import UIKit


class ProfileView: UIView {
  
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var birthPlaceLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup () {
        let view = loadViewFromXib()
        self.addSubview(view)
        self.frame = self.bounds
    }
    
    private func loadViewFromXib () -> UIView {
        
      guard  let view = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as? UIView else { return UIView()}
        return view
    }
    
    
}
