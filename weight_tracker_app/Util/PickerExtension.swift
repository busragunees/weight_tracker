//
//  PickerExtension.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 13.08.2022.
//

import Foundation
import Introspect
import SwiftUI


extension View {
public func introspectUIPickerView(customize: @escaping (UIPickerView) -> ()) -> some View {
return inject(UIKitIntrospectionView(
selector: { introspectionView in
guard let viewHost = Introspect.findViewHost(from: introspectionView) else {
return nil
}
return Introspect.previousSibling(containing: UIPickerView.self, from: viewHost)
},
customize: customize
))
}
}
