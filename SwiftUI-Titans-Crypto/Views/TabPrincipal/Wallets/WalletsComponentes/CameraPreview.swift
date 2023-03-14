//
//  CameraPreview.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 13/03/23.
//

import AVFoundation
import UIKit

class CameraPreview: UIView {
    private var label: UILabel?

    var previewLayer: AVCaptureVideoPreviewLayer?
    var session = AVCaptureSession()
    weak var delegate: QrCodeCameraDelegate?

    init(session: AVCaptureSession) {
        super.init(frame: .zero)
        self.session = session
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createSimulatorView(delegate: QrCodeCameraDelegate) {
        self.delegate = delegate
        backgroundColor = UIColor.black
        label = UILabel(frame: bounds)
        label?.numberOfLines = 4
        label?.text = "Click here to simulate scan"
        label?.textColor = UIColor.white
        label?.textAlignment = .center
        if let label = label {
            addSubview(label)
        }
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClick))
        addGestureRecognizer(gesture)
    }

    @objc func onClick() {
        delegate?.onSimulateScanning()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        #if targetEnvironment(simulator)
            label?.frame = bounds
        #else
            previewLayer?.frame = bounds
        #endif
    }
}
