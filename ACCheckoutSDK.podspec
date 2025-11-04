Pod::Spec.new do |s|
  s.name             = 'ACCheckoutSDK'
  s.version          = '2.7.0'
  s.summary          = 'Appcharge Checkout SDK'
  s.homepage         = 'https://github.com/omerco-ctrl/ACCheckoutSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Omer Cohen' => 'omer.co@appcharge.com' }

  s.platform         = :ios, '13.0'
  s.swift_versions   = ['5.7', '5.8', '5.9', '5.10']

  # 👉 Point to your repo and tag that matches s.version
  s.source           = { :git => 'https://github.com/omerco-ctrl/ACCheckoutSDK.git',
                         :tag => s.version.to_s }

  # 👉 The framework that’s in the repo at the root
  s.vendored_frameworks = 'ACCheckoutSDK.xcframework'

  # (If you need resources, add s.resource_bundles or s.resources here)
end
