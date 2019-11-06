require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RCTAlipay"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNScreens - first incomplete navigation solution for your React Native app
                   DESC
  s.homepage     = "https://github.com/xy113/react-native-dsx-alipay"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "author" => "songdewei@163.com" }
  s.platforms    = { :ios => "9.0", :tvos => "11.0" }
  s.source       = { :git => "https://github.com/xy113/react-native-dsx-alipay.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true
  s.resource_bundles = {'Resources' => 'ios/AlipaySDK.bundle'}
  s.dependency "React"

  s.frameworks = 'CoreMotion','CoreTelephony'
  s.library = 'c++','z'
  s.vendored_frameworks = 'ios/AlipaySDK.framework'
end

