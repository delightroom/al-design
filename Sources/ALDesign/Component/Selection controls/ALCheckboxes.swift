//
//  ALCheckboxes.swift
//  
//
//  Created by smis on 2022/02/03.
//

import Foundation
import UIKit


public class ALCheckboxes: UITableView {
    private let labels: [String]
    private var selectedIndices = Set<Int>()
    
    public init(frame: CGRect = .zero, labels: [String]) {
        self.labels = labels
        super.init(frame: frame, style: .plain)
        translatesAutoresizingMaskIntoConstraints = false
        register(ALCheckboxCell.self, forCellReuseIdentifier: "ALCheckboxCell")
        dataSource = self
        delegate = self
        separatorStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ALCheckboxes: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ALCheckboxCell", for: indexPath) as? ALCheckboxCell else { return UITableViewCell() }
        cell.update(for: labels[indexPath.row])
        if selectedIndices.contains(indexPath.row) {
            cell.select()
        } else {
            cell.deselect()
        }
        return cell
    }
}

extension ALCheckboxes: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selected = indexPath.row
        if selectedIndices.contains(selected) {
            selectedIndices.remove(selected)
        } else {
            selectedIndices.insert(selected)
        }
        reloadData()
    }
}

class ALCheckboxCell: UITableViewCell {
    lazy private var selection: UIImageView = {
        let button = UIImageView()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.image = UIImage(named: "checkbox_unselected", in: .module, compatibleWith: nil)!
        return button
    }()
    
    lazy private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        
        addSubview(selection)
        selection.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        selection.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        selection.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        selection.widthAnchor.constraint(equalToConstant: 48).isActive = true
        selection.heightAnchor.constraint(equalToConstant: 54).isActive = true
        
        addSubview(titleLabel)
        titleLabel.leadingAnchor.constraint(equalTo: selection.trailingAnchor).isActive = true
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
        selection.image = UIImage(named: "checkbox_selected", in: .module, compatibleWith: nil)!
    }
    
    func deselect() {
        selection.image = UIImage(named: "checkbox_unselected", in: .module, compatibleWith: nil)!
    }
}

