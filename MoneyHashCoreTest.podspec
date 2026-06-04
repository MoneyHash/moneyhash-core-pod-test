Pod::Spec.new do |s|
  s.name             = 'MoneyHashCoreTest'
  s.version          = '2.0.2-beta.2'
  s.summary          = 'Core framework shared by MoneyHash SDKs.'
  s.description      = 'Shared core xcframework used by MoneyHashPayment and MoneyHashLeanTest.'
  s.homepage         = 'https://moneyhash.io'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MoneyHash' => 'tech@moneyhash.io' }
  s.source           = { :git => 'https://github.com/MoneyHash/moneyhash-core-pod-test.git', :tag => s.version.to_s }
  s.ios.deployment_target = '14.0'
  s.vendored_frameworks = 'MoneyHashCore.xcframework'
end
