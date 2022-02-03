//
//  ALRadioButtons.swift
//  
//
//  Created by smis on 2022/02/03.
//

import Foundation
import UIKit
import Combine

public class ALRadioButtons: UITableView {
    
    private let labels: [String]
    
    public init(frame: CGRect = .zero, labels: [String]) {
        self.labels = labels
        super.init(frame: frame, style: .plain)
        register(ALRadioButtonCell.self, forCellReuseIdentifier: "ALRadioButtonCell")
        dataSource = self
        delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ALRadioButtons: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ALRadioButtonCell", for: indexPath) as? ALRadioButtonCell else { return UITableViewCell() }
        cell.update(for: labels[indexPath.row])
        return cell
    }
}

extension ALRadioButtons: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ALRadioButtonCell", for: indexPath) as? ALRadioButtonCell else { return }
        cell.select()
    }
    
    public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ALRadioButtonCell", for: indexPath) as? ALRadioButtonCell else { return }
        cell.deselect()
    }
}

class ALRadioButtonCell: UITableViewCell {
    lazy private var selection: UIImageView = {
        let button = UIImageView()
        button.backgroundColor = .black
//        button.image = UIImage(named: "radio_button_unselected", in: .module, compatibleWith: nil)!
        return button
    }()
    
    lazy private var titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(selection)
        selection.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        selection.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        selection.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        selection.widthAnchor.constraint(equalToConstant: 48).isActive = true
        selection.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
        addSubview(titleLabel)
        titleLabel.centerYAnchor.constraint(equalTo: selection.centerYAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(for label: String) {
        titleLabel.attributedText = label.text(.paragraph).addColor(.surfaceHighEmphasis)
    }
    
    func select() {
        selection.backgroundColor = .secondary
    }
    
    func deselect() {
        selection.backgroundColor = .black
    }
}
