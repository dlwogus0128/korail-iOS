//
//  TrainInquiryVC.swift
//  Korail-iOS
//
//  Created by 몽이 누나 on 2022/11/18.
//

import UIKit
import SnapKit
import Then

class TrainInquiryVC: UIViewController {

    private let contentView = UIView().then {
        $0.backgroundColor = .red
        $0.layer.cornerRadius = 10
        $0.layer.applyShadow(alpha: 0.1, x: 0, y: 0, blur: 8)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        setUI()
        setLayout()
    }

}

// MARK: - Methods

extension TrainInquiryVC {
    
    private func setNavigationBar() {
        self.navigationItem.title = "열차 조회"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(descriptor: UIFontDescriptor(name: FontName.pretendardMedium.rawValue, size: 20), size: 20)]
    }
    
    private func setUI() {
        view.backgroundColor = .korailGray1
    }
    
    private func setLayout() {
        view.addSubview(contentView)
        
        contentView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(24)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(17)
        }
    }
    
}
