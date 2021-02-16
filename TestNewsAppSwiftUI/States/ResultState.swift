//
//  ResultState.swift
//  TestNewsAppSwiftUI
//
//  Created by Max Chesnikov on 16.02.2021.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
