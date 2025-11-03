Pod::Spec.new do |s|
  s.name             = 'ACCheckoutSDK'
  s.version          = '2.4.0'
  s.summary          = 'In-app checkout SDK.'
  s.description      = 'ACCheckoutSDK provides checkout flows and utilities.'
  s.homepage         = 'https://github.com/yourorg/ios-checkout-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Appcharge' => 'ios@appcharge.com' }
  s.source           = { :git => 'https://github.com/yourorg/ios-checkout-sdk.git', :tag => s.version.to_s }

  s.platform         = :ios, '13.0'
  s.swift_versions   = ['5.9', '5.10']
  s.vendored_frameworks = 'ACCheckoutSDK.xcframework'
  s.static_framework = true
  s.requires_arc     = true

  # If your framework needs resources inside the .xcframework, remove this.
  # If you also ship a resource bundle outside it, specify e.g.:
  # s.resource_bundles = { 'ACCheckoutSDKResources' => 'Resources/**/*' }

  # Optional: if you know you need these
  # s.frameworks = 'SafariServices'
end
