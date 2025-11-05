Pod::Spec.new do |s|
  s.name             = 'ACCheckoutSDK'
  s.version          = '3.0.0'
  s.summary          = 'Appcharge Checkout SDK'
  s.description      = 'A lightweight static binary SDK for Appcharge checkout.'
  s.homepage         = 'https://github.com/omerco-ctrl/ACCheckoutSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Omer Cohen' => 'omer.co@appcharge.com' }

  s.platform         = :ios, '13.0'
  s.swift_versions   = ['5.7', '5.8', '5.9', '5.10']

  # Require a modern CocoaPods that plays nicely with Xcode 15+ projects
  s.cocoapods_version = '>= 1.16.0'

  # Your public repo and tag that matches s.version
  s.source           = { :git => 'https://github.com/omerco-ctrl/ACCheckoutSDK.git',
                         :tag => s.version.to_s }

  # Vendored static XCFramework at repo root (no scripts/resources)
  s.vendored_frameworks = 'ACCheckoutSDK.xcframework'

  # Force static linkage to avoid embed phases in host apps
  s.static_framework = true

  # Crash reporting:
  # s.vendored_dsym = 'ACCheckoutSDK.dSYM'

end
 
