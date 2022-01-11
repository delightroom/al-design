//
//  DismissIcon.swift
//  
//
//  Created by smis on 2022/01/11.
//

import UIKit

public struct DismissIcon {
    public static let qrcode128 = UIImage(named: "img_dissmiss_qrcode_128", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let barcode128 = UIImage(named: "img_dismiss_barcode_128", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let pass128 = UIImage(named: "ic_dismiss_pass_128_128", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let fail128 = UIImage(named: "ic_dismiss_fail_128_128", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
}
