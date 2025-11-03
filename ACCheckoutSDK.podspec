# ACCheckoutSDK.podspec
Pod::Spec.new do |s|
  s.name             = 'ACCheckoutSDK'
  s.version          = '2.4.0'
  s.summary          = 'In-app checkout SDK.'
  s.description      = 'ACCheckoutSDK provides checkout flows and utilities.'
  s.homepage         = 'https://github.com/<ORG_OR_USER>/ACCheckoutSDK' # <- real, public URL
  s.license          = { :type => 'MIT', :file => 'LICENSE' }           # ensure LICENSE exists
  s.authors          = { 'Omer Cohen' => 'omer.co@appcharge.com' }      # optional
  s.source           = { :git => 'https://github.com/<ORG_OR_USER>/ACCheckoutSDK.git', :tag => s.version.to_s }

  s.platform         = :ios, '14.0'
  s.swift_versions   = ['5.9', '5.10']
  s.module_name      = 'ACCheckoutSDK'
  s.static_framework = true
  s.requires_arc     = true
  s.vendored_frameworks = 'ACCheckoutSDK.xcframework'
end
