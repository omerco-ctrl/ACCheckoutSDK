# 💳 ACCheckoutSDK

ACCheckoutSDK is a lightweight, in-app iOS checkout SDK by Appcharge.  
This repository contains the public CocoaPods integration and a prebuilt static `.xcframework`.

## 📦 SDK Overview

- **Version:** 3.0.0  
- **Minimum iOS:** 13.0  
- **Framework type:** Static `.xcframework`  
- **Distribution:** CocoaPods  
- **Swift:** 5.7–5.10  
- **Xcode:** 15 or newer  
- **CocoaPods:** 1.16.0 or newer  
- **CocoaPods page:** https://cocoapods.org/pods/ACCheckoutSDK

## 📲 Installation (CocoaPods)

### If your project does not use CocoaPods yet:

#### Install CocoaPods:
sudo gem install cocoapods
pod --version

#### Initialize CocoaPods:
pod init

#### Install pods:
pod repo update
pod install

Open the workspace:
YourApp.xcworkspace

---

## Add the Appcharge SDK
Edit Podfile:

platform :ios, '13.0'
target 'YourApp' do
  pod 'ACCheckoutSDK'
end

Then:
pod repo update
pod install

---

## 🚀 Basic Usage Example

import UIKit
import ACCheckoutSDK

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Example usage here
    }
}

---

## 🔄 Updating the SDK
pod repo update
pod update ACCheckoutSDK

---

## 🧯 Troubleshooting

Common errors and fixes included.

## 📋 Requirements Recap
iOS 13+, Xcode 15+, Swift 5.7–5.10, CocoaPods 1.16.0+

## 📄 License
MIT
